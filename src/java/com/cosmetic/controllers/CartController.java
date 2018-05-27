/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.controllers;

import com.cosmetic.entities.Cart;
import com.cosmetic.entities.Order;
import com.cosmetic.entities.Orderdetail;
import com.cosmetic.entities.User1;
import com.cosmetic.models.CartModel;

import com.cosmetic.models.ProductModel;
import com.cosmetic.utils.EmailUtil;
import java.util.List;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author
 */
@Controller
@RequestMapping(value = "carts")
public class CartController {

    private final ProductModel productModel;
    private final CartModel cartModel;

    public CartController() {
        productModel = new ProductModel();
        cartModel = new CartModel();
    }

    @RequestMapping(value = "/viewCart")
    public ModelAndView viewCart(HttpSession session) {
        ModelAndView model = new ModelAndView("user/cart");
        //Lay du lieu ListProduct trong session
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        //add listCart vao session
        session.setAttribute("listCart", listCart);
        //add totalAmount vao session
        session.setAttribute("totalAmount", getTotalAmount(listCart));
        return model;
    }

    @RequestMapping(value = "/addCart", method = RequestMethod.POST)
    public ModelAndView addCart(@RequestParam(value = "productId", required = false) int productId,
            @RequestParam(value = "colorSelect", required = false) String colorSelect,
            @RequestParam(value = "sizeOption", required = false) String sizeOption,
            @RequestParam(value = "quantity", required = false) String quantity, 
            HttpServletRequest request, HttpSession session) {
        ModelAndView model = new ModelAndView("user/cart");
        List<Cart> listCart = cartModel.addCart(productId, colorSelect, sizeOption, quantity, request, session);
        //add listCart vao session
        session.setAttribute("listCart", listCart);
        //add totalAmount vao session
        double orderTotal = getTotalAmount(listCart);
        session.setAttribute("totalAmount", orderTotal);
        //add shipping vao session
        session.setAttribute("shipping", "Free Shipping");
        //add orderTotal vao session
        session.setAttribute("orderTotal", orderTotal);
        return model;
    }

    @RequestMapping(value = "/remove")
    public ModelAndView removeProduct(@RequestParam("productId") int productId, HttpSession session) {
        ModelAndView model = new ModelAndView("user/cart");
        List<Cart> listCart = cartModel.removeProduct(productId, session);
        //Set vao session
        double orderTotal = getTotalAmount(listCart);
        session.setAttribute("listCart", listCart);
        session.setAttribute("totalAmount", orderTotal);
        session.setAttribute("shipping", "Free Shipping");
        session.setAttribute("orderTotal", orderTotal);
        return model;
    }

    @RequestMapping(value = "/calculateShipping", method = RequestMethod.POST)
    public ModelAndView calculateShipping(@RequestParam(value = "calculate_shipping_city", required = false) String calculateShippingCity,
            @RequestParam(value = "calculate_shipping_address", required = false) String calculateShippingAddress,
            @RequestParam(value = "calculate_shipping_postcode", required = false) String calculateShippingPostcode,
            HttpServletRequest request, HttpSession session) {
        ModelAndView model = new ModelAndView("user/cart");
        session = request.getSession();
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        // lay danh sach sl san pham muon mua
        String[] arrQuantity = request.getParameterValues("quantity");
        for (int i = 0; i < listCart.size(); i++) {
            listCart.get(i).setQuantity(Integer.parseInt(arrQuantity[i]));
            if (Integer.parseInt(arrQuantity[i]) < 1) {
                listCart.get(i).setQuantity(1);
            }
        }
        int provincial = Integer.parseInt(calculateShippingCity);
        if(provincial != 0 && (!calculateShippingAddress.equals("") || !calculateShippingAddress.equals(null)) && (!calculateShippingPostcode.equals("") || !calculateShippingPostcode.equals(null))) {
            cartModel.addAddressCustomer(provincial, calculateShippingAddress, calculateShippingPostcode);
        }
        //Set vao session
        session.setAttribute("listCart", listCart);
        session.setAttribute("totalAmount", getTotalAmount(listCart));
        session.setAttribute("provincial", provincial);
        session.setAttribute("districtCommune", calculateShippingAddress);
        session.setAttribute("postCode", calculateShippingPostcode);
        return model;
    }

    @RequestMapping(value = "/updateCart", method = RequestMethod.POST)
    public ModelAndView updateCart(@RequestParam(value = "calculate_shipping_city", required = false) String calculateShippingCity,
            @RequestParam(value = "calculate_shipping_address", required = false) String calculateShippingAddress,
            @RequestParam(value = "calculate_shipping_postcode", required = false) String calculateShippingPostcode,
            HttpServletRequest request, HttpSession session) {
        ModelAndView model = new ModelAndView("user/cart");
        session = request.getSession();
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        double totalAmount = (double) session.getAttribute("totalAmount");
//        String calculateShippingAddress = (String) session.getAttribute("districtCommune");
//        String calculateShippingPostcode = (String) session.getAttribute("postCode");
//        String calculateShippingCity = (String) session.getAttribute("provincial");
        // lay danh sach sl san pham muon mua
        String[] arrQuantity = request.getParameterValues("quantity");
        for (int i = 0; i < listCart.size(); i++) {
            listCart.get(i).setQuantity(Integer.parseInt(arrQuantity[i]));
            if (Integer.parseInt(arrQuantity[i]) < 1) {
                listCart.get(i).setQuantity(1);
            }
        }
        int provincial = Integer.parseInt(calculateShippingCity);
        if(provincial != 0 && (!calculateShippingAddress.equals("") || !calculateShippingAddress.equals(null)) && (!calculateShippingPostcode.equals("") || !calculateShippingPostcode.equals(null))) {
            cartModel.addAddressCustomer(provincial, calculateShippingAddress, calculateShippingPostcode);
        }
//        int provincial = Integer.parseInt(calculateShippingCity);
        String shipping = "";
        double orderTotal = 0;
        if (provincial == 24) {
            shipping = "Free Shipping";
            orderTotal = totalAmount;
        } else {
            shipping = "Shipping 10%";
            orderTotal = totalAmount + Math.round(totalAmount * 0.1);
        }
        //Set vao session
        session.setAttribute("listCart", listCart);
        session.setAttribute("totalAmount", getTotalAmount(listCart));
        session.setAttribute("shipping", shipping);
        session.setAttribute("orderTotal", orderTotal);
        session.setAttribute("provincial", provincial);
        session.setAttribute("districtCommune", calculateShippingAddress);
        session.setAttribute("postCode", calculateShippingPostcode);
        return model;
    }
    
    @RequestMapping(value = "myCart")
    public ModelAndView myCart(HttpSession session) {
        ModelAndView model = new ModelAndView("user/cart");
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        double total = getTotalAmount(listCart);
        model.getModelMap().put("totalAmount", total);
         session.setAttribute("listCart", listCart);
        return model;
    }
    
    @RequestMapping(value = "checkout")
    public ModelAndView checkout(HttpSession session) {
        ModelAndView model = new ModelAndView("user/checkout");
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        String userName = (String) session.getAttribute("account");
        User1 us = new User1();
        if (userName != null) {
            us = productModel.getUserByUserName(userName);
        }

        session.setAttribute("listCart", listCart);
        //add totalAmount vao session
        session.setAttribute("totalAmount", getTotalAmount(listCart));
        model.getModel().put("acc", us);
        return model;
    }
    
    @RequestMapping(value = "payment")
    public ModelAndView prePayment(HttpServletRequest request, HttpSession session) throws MessagingException {
        ModelAndView model = new ModelAndView("user/paymentsuccess");
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        String name = request.getParameter("buyerName");
        String address = request.getParameter("buyerAddress");
        String email = request.getParameter("buyerEmail");
        String phone = request.getParameter("buyerPhone");
        double total = getTotalAmount(listCart);
        Order oder = new Order();
        oder.setOrderName(name);
        oder.setOrderNumber(name);
        oder.setAddress(address);
        oder.setEmail(email);
        oder.setPhone(phone);
        oder.setTotalAmount(total);

        boolean result = productModel.insertOrder(oder);
        if (result) {
            int idOrder = productModel.getOrderNew().getOrderId();
            for (Cart listCart1 : listCart) {
                Orderdetail orderdetail = new Orderdetail();
                orderdetail.setOrderId(idOrder);
                orderdetail.setProductId(listCart1.getProduct().getProductId());
                orderdetail.setProductName(listCart1.getProduct().getProductName());
                if (listCart1.getProduct().getDiscount() > 0) {
                    orderdetail.setPrice((listCart1.getProduct().getPrice() * (100 - listCart1.getProduct().getDiscount())) / 100);
                    orderdetail.setAmount(listCart1.getQuantity() * ((listCart1.getProduct().getPrice() * (100 - listCart1.getProduct().getDiscount())) / 100));
                } else {
                    orderdetail.setPrice(listCart1.getProduct().getPrice());
                    orderdetail.setAmount(listCart1.getQuantity() * listCart1.getProduct().getPrice());
                }
                orderdetail.setQuantity(listCart1.getQuantity());
                productModel.insertOrderDetail(orderdetail);

            }
        }
      
         String b = "<table border ='1'><thead><tr><th>Tên sản phẩm</th><th>Giá</th><th>Số lượng</th> <th>Tổng</th></tr> </thead> <tbody>";
        for (Cart listCart1 : listCart) {
            b = b+ "<tr> <td>" + listCart1.getProduct().getProductName() + "</td>";
            if(listCart1.getProduct().getDiscount() == 0) {
                b = b + "<td>" + listCart1.getProduct().getPrice() + "</td>";
                b = b + "<td>" + listCart1.getQuantity() + "</td>";
                b = b + "<td>" + listCart1.getProduct().getPrice()*listCart1.getQuantity()+ " </td>";
            } else {
                 b = b + "<td>" +((listCart1.getProduct().getPrice() * (100 - listCart1.getProduct().getDiscount())) / 100)+ "</td>";
                  b = b + "<td>" + listCart1.getQuantity() + "</td>";
                b = b + "<td>" + ((listCart1.getProduct().getPrice() * (100 - listCart1.getProduct().getDiscount())) *listCart1.getQuantity())+ "</td>";
            }
            b = b+ "</tr>";
        }
        b = b + "</tbody></table>" + "Tiền ship: 2$ <br/>"+"Tổng cộng:" + (getTotalAmount(listCart)+ 2) ;
        EmailUtil.sendMail(email, "Website bán quần áo. Xác nhận đơn hàng", "Cảm ơn bảng đã mua hàng của chúng tôi.  " + b);
        //lay ma don hang vua them vao
        return model;
    }

    private double getTotalAmount(List<Cart> listCart) {
        double totalAmount = 0;
        for (Cart cart : listCart) {
            if (cart.getProduct().getPriceSale() != 0) {
                totalAmount += cart.getQuantity() * cart.getProduct().getPriceSale();
            } else {
                totalAmount += cart.getQuantity() * cart.getProduct().getPrice();
            }
        }
        return totalAmount;
    }
}
