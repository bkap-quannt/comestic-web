/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.controllers;

import com.cosmetic.entities.Category;
import com.cosmetic.entities.Color;
import com.cosmetic.models.ProductModel;
import com.cosmetic.entities.Product;
import com.cosmetic.entities.ProductImage;
import com.cosmetic.entities.Provider;
import com.cosmetic.entities.Size;
import com.cosmetic.entities.User1;
import com.cosmetic.models.CategoryModel;
import com.cosmetic.models.ColorAndSizeModel;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping(value = "index")
public class ProductController {
    
    private ProductModel productModel;
    private CategoryModel categoryModel;
    private ColorAndSizeModel colorAndSizeModel;

    public ProductController() {
        productModel = new ProductModel();
        colorAndSizeModel = new ColorAndSizeModel();
        categoryModel = new CategoryModel();
    }
    
    @RequestMapping(value = "allProduct")
    public ModelAndView getAllProduct(){
        ModelAndView model = new ModelAndView("user/product");
        List<Product> listProduct = productModel.getAllProduct(); // danh sách các sản phẩm
        model.addObject("listProduct", listProduct);
        sidebar(model);
        return  model;
    }
    
    @RequestMapping(value = "productDetail")
    public ModelAndView productDetail(@RequestParam(value = "productId") int productId) {
        ModelAndView model = new ModelAndView("user/product-detail");
        List<ProductImage> listProductImage = productModel.getProductsImagesByProductId(productId); // danh sách ảnh chi tiết của từng sản phẩm
        List<Product> listProduct = productModel.getAllProduct(); // danh sách tất cả sản phẩm
        Product product = productModel.getProductDetail(productId); // thông tin của một sản phẩm
        List<Color> listColor = colorAndSizeModel.getAllColor();//danh sách màu sắc hiển thị cho phần lọc theo màu sắc
        List<Size> listSize = colorAndSizeModel.getAllSize(); // tất cả size của sảm phẩm
        Category category = categoryModel.getCategoryByCategoryId(product.getCategoryId()); // thông tin của một catalog
        Provider provider = productModel.getProvider(product.getProviderId()); // thông tin xuất sứ của một sản phẩm
        model.addObject("getCategory", category);
        model.addObject("getProduct", product);
        model.addObject("listProduct", listProduct);
        model.addObject("listProductImage", listProductImage);
        model.addObject("listColor", listColor);
        model.addObject("listSize", listSize);
        model.addObject("getProvider", provider);
        return model;
    }
    
    @RequestMapping(value = "loginRegister")
    public ModelAndView login() {
        ModelAndView model = new ModelAndView("user/login");
        User1 user = new User1();
        model.addObject("account", user);
        return model;
    }
    
      @RequestMapping(value = "logoutRegister")
    public String logout(HttpSession session) {
      
        session.removeAttribute("account");
        return "redirect: allProduct.htm";
    }
    @RequestMapping(value = "loginFontend")
    public String loginFontend(@ModelAttribute("account") User1 user, HttpSession session) {
        boolean result = productModel.checkLogin(user);
        if (result) {
            session.setAttribute("account", user.getUserName());
            return "redirect: allProduct.htm";
        } else {
            return "redirect: loginRegister.htm";
        }
    }

    @RequestMapping(value = "initResgiter")
    public ModelAndView resgiter() {
        ModelAndView model = new ModelAndView("user/resgiter");
        User1 user = new User1();
        model.addObject("resgiter", user);
        return model;

    }

    @RequestMapping(value = "resgiter")
    public String resgiter(@ModelAttribute("resgiter") User1 user, HttpSession session) {
        boolean result = productModel.insertUser(user);
        if (result) {
            session.setAttribute("account", user.getUserName());
            return "redirect: allProduct.htm";
        } else {
            return "redirect: initResgiter.htm";
        }
    }
    
    @RequestMapping(value = "error")
    public ModelAndView error(){
        ModelAndView model = new ModelAndView("user/404");
        return  model;
    }
    
    @RequestMapping(value = "checkout")
    public ModelAndView checkout(){
        ModelAndView model = new ModelAndView("user/checkout");
        return  model;
    }
    
    @RequestMapping(value = "search.htm")
    public ModelAndView searchProduct(@RequestParam("query") String name) {
         ModelAndView model = new ModelAndView("user/product");
        List<Product> listProduct = productModel.serachProduct(name);
        model.addObject("listProduct", listProduct);
        sidebar(model);
        return model;
    }
    
    @RequestMapping(value = "getProductByCategory")
    public ModelAndView getProductByCategoryId(@RequestParam("categoryId") int categoryId) {
        ModelAndView model = new ModelAndView("user/product");
        List<Product> listProduct = productModel.getProductByCategoryId(categoryId);
        model.addObject("listProduct", listProduct);
        sidebar(model);
        return model;
    }
    
    @RequestMapping(value = "filterPrice")
    public ModelAndView filterPrice(@RequestParam(value = "amount", required = false) String amount) {
        ModelAndView model = new ModelAndView("user/product");
        List<Product> listProduct = productModel.filterPrice(amount);
        model.addObject("listProduct", listProduct);
        sidebar(model);
        return model;
    }
    
    @RequestMapping(value = "productTag")
    public ModelAndView getProductTag(@RequestParam("providerId") int providerId) {
        ModelAndView model = new ModelAndView("user/product");
        List<Product> listProduct = productModel.getProductByProviderId(providerId); // danh sách sản phẩm cùng nhà phân phối
        model.addObject("listProduct", listProduct);
        sidebar(model);
        return model;
    }
    
    @RequestMapping(value = "getProductByColor")
    public ModelAndView getProductColor(@RequestParam("colorId") int colorId) {
        ModelAndView model = new ModelAndView("user/product");
        List<Product> listProduct = productModel.getProductByColorId(colorId); // danh sách sản phẩm cùng màu
        List<Product> listProductHot = productModel.getProductHot();// danh sách sản phâm nổi bật
//        List<Color> listColor = colorAndSizeModel.getAllColor();//danh sách màu sắc hiển thị cho phần lọc theo màu sắc
//        List<Size> listSize = colorAndSizeModel.getAllSize(); // danh sách size của sảm phẩm
        List<Category> listCategory = categoryModel.getCategoryRoot(); // danh sách các loại catalog của các sản phẩm
        List<Provider> listTag = productModel.getAllTags(); // danh sách các thương hiệu
        model.addObject("listProductHot", listProductHot);
        model.addObject("listCategory", listCategory);
//        model.addObject("listColor", listColor);
//        model.addObject("listSize", listSize);
        model.addObject("listTag", listTag);
        model.addObject("listProduct", listProduct);
        return model;
    }
    
    @RequestMapping(value = "defaultSorting")
    public ModelAndView getAllProductBySorting(@RequestParam(value = "sorting", required = false) String sorting) {
        ModelAndView model = new ModelAndView("user/product-shop-filter");
        List<Product> listProduct = new ArrayList<Product>();
        if(sorting.equalsIgnoreCase("price-low-to-high")) {
            listProduct = productModel.getAllProductSortPriceDesc(); // danh sách các sản phẩm đã sắp xếp theo giá từ cao đến thấp
        } else {
            if(sorting.equalsIgnoreCase("price-high-to-low")) {
                listProduct = productModel.getAllProductSortPriceAsc(); // danh sách các sản phẩm đã sắp xếp theo giá từ thấp đến cao
            } else {
                if(sorting.equalsIgnoreCase("by-popularity")) {
                    listProduct = productModel.getAllProductByPopularity(); // danh sách các sản phẩm đã sắp xếp theo sự xem nhiều đến xem ít
                } else {
                    listProduct = productModel.getAllProduct(); // danh sách các sản phẩm
                }
            }
        }
        model.addObject("listProduct", listProduct);
        return  model;
    }
    
    private void sidebar(ModelAndView model) {
        List<Product> listProductHot = productModel.getProductHot();// danh sách sản phâm nổi bật
        List<Category> listCategory = categoryModel.getCategoryRoot(); // danh sách các loại catalog của các sản phẩm
        List<Provider> listTag = productModel.getAllTags(); // danh sách các thương hiệu
        model.addObject("listProductHot", listProductHot);
        model.addObject("listCategory", listCategory);
        model.addObject("listTag", listTag);
    }
}
