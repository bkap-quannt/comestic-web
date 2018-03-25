/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.controllers;

import com.cosmetic.entities.Product;
import com.cosmetic.models.ProductModel;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


/**
 *
 * @author Tuan
 */
@Controller
@RequestMapping(value="/productController")
public class ProductController {
    
    public ProductController() {
        ProductModel productModel = new ProductModel();
    }
    
    @RequestMapping(value="index")
    public ModelAndView index(){
        ModelAndView model = new ModelAndView("user/index");
        return model;
    }
    
    /**
     * Get all product
     * @return listProduct
     */
    @RequestMapping(value="allProducts")
    public ModelAndView getAllProduct(){
        ModelAndView model = new ModelAndView("user/product");
        return model;
    }
    
    /**
     * Get a product
     * @param id id
     * @return product
     */
    @RequestMapping(value="viewProduct")
    public ModelAndView viewProduct(@RequestParam("id") int id) {
        ModelAndView model = new ModelAndView("user/getProduct");
        
        return model;
    }
    
    /**
     * Implement click new Product
     * @return ModelAndView
     */
    @RequestMapping(value="initInsertProduct")
    public ModelAndView initInsertProduct() {
        ModelAndView model = new ModelAndView("user/newProduct");
        Product product = new Product();
        model.getModelMap().put("createProduct", product);
        return model;
    }
    
    /**
     * Created a product
     * @param product Product
     * @param modelMap ModelMap
     * @param request HttpServletRequest
     * @return success or error
     */
    @RequestMapping(value="insertProduct")
    public String insertProduct(@ModelAttribute("/*createProduct") Product product, ModelMap modelMap, HttpServletRequest request) {
        
        return "";
    }
    
    /**
     * Implement click edit Product
     * @param id id
     * @return ModelAndView
     */
    @RequestMapping(value="initUpdateProduct")
    public ModelAndView initUpdateProduct(@RequestParam("id") int id) {
        ModelAndView model = new ModelAndView("user/updateProduct");
        Product product = new Product();  // new product() thay bằng model service get info product
        model.getModelMap().put("editProduct", product);
        return model;
    }
    
    /**
    * Update a product
    * @param product Product
    * @param modelMap ModelMap
    * @return success or error
    * @throws ParseException 
    */
    @RequestMapping(value="patchProduct")
    public String updateProduct(@ModelAttribute("editProduct") Product product, ModelMap modelMap) {
        
        return "";
    }
    
    /**
    * Delete a product
    * @param id id
    * @return success or error
    */
    @RequestMapping(value="deleteProduct")
    public String deleteProduct(@RequestParam("id") int id) {
        
        return "";
    }
    
}
