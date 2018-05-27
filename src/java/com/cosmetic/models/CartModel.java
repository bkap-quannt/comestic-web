/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.models;

import com.cosmetic.entities.AddressCustomer;
import com.cosmetic.entities.Cart;
import com.cosmetic.entities.Product;
import static com.cosmetic.entities.Provincial.CITY_MA;
import com.cosmetic.utils.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Administrator
 */
public class CartModel {

    private SessionFactory sessionFactoryAddressCustomer = HibernateUtil.getSessionFactory(AddressCustomer.class);
    ProductModel productModel = new ProductModel();

    public List<Cart> addCart(int productId, String colorSelect, String sizeOption, String quantity,
            HttpServletRequest request, HttpSession session) {
        int cartQuantity = Integer.parseInt(quantity);
        //Lay du lieu ListProduct trong session
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        //TH1: listCart chua co du lieu gi
        if (listCart == null) {
            //Khoi tao danh sach listCart
            listCart = new ArrayList<>();
            //Lay thong tin Product tu productId
            Product product = productModel.getProductsByProductId(productId);
            //Khoi tao moi 1 doi tuong Cart
            Cart cart = new Cart(product, cartQuantity, colorSelect, sizeOption);
            //add product vao listCart
            listCart.add(cart);
            //add provincial vao session
            session.setAttribute("provincial", 0);
        } else {
            //TH2-3: listCart da co du lieu
            boolean checkexit = true;
            for (Cart c : listCart) {
                if ((c.getProduct().getProductId() == productId) && (c.getColor().equalsIgnoreCase(colorSelect))
                        && (c.getSize().equalsIgnoreCase(sizeOption))) {
                    //Th2: Add product da ton tai trong listCart - cong so luong product
                    c.setQuantity(c.getQuantity() + 1);
                    //set checkexit = false
                    checkexit = false;
                    String stringProvincial = request.getParameter("provincial");
                    if (stringProvincial == null) {
                        session.setAttribute("provincial", 0);
                    } else {
                        int provincial = Integer.parseInt((String) session.getAttribute("provincial"));
                        session.setAttribute("provincial", provincial);
                    }
                }
            }
            if (checkexit) {
                //TH3: san pham chua co trong listCart
                //Lay thong tin product tu productId
                Product product = productModel.getProductsByProductId(productId);
                //Khoi tao moi 1 doi tuong Cart
                Cart cart = new Cart(product, cartQuantity, colorSelect, sizeOption);
                //add product vao listCart
                listCart.add(cart);
                String stringProvincial = request.getParameter("provincial");
                if (stringProvincial == null) {
                    session.setAttribute("provincial", 0);
                } else {
                    int provincial = Integer.parseInt((String) session.getAttribute("provincial"));
                    session.setAttribute("provincial", provincial);
                }
            }
            String calculateShippingAddress = (String) session.getAttribute("districtCommune");
            String calculateShippingPostcode = (String) session.getAttribute("postCode");
            session.setAttribute("districtCommune", calculateShippingAddress);
            session.setAttribute("postCode", calculateShippingPostcode);
        }
        return listCart;
    }

    public List<Cart> removeProduct(int productId, HttpSession session) {
        //Lay danh sach gio hang
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        //Xoa book trong danh sach gio hang
        for (Cart cart : listCart) {
            if (cart.getProduct().getProductId() == productId) {
                //Thuc hien xoa
                listCart.remove(cart);
                break;
            }
        }
        return listCart;
    }

    public void addAddressCustomer(int calculateShippingCity,
            String calculateShippingAddress, String calculateShippingPostcode) {
        Session session = sessionFactoryAddressCustomer.openSession();
        Transaction transaction = session.beginTransaction();
        for (int city : CITY_MA) {
            if (calculateShippingCity == city) {
                AddressCustomer addressCustomer = new AddressCustomer();
                addressCustomer.setProvincialId(city);
                addressCustomer.setAddress(calculateShippingAddress);
                addressCustomer.setPostCode(calculateShippingPostcode);
                addressCustomer.setStatus(1);
                session.save(addressCustomer);
            }
        }
        transaction.commit();
        session.close();
    }

}
