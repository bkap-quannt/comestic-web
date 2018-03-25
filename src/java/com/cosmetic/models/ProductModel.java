/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.models;

import com.cosmetic.entities.Product;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Tuan
 */
public class ProductModel {
    private int id;
    
    public List<Product> getAllProduct() {
        List<Product> listProduct = new ArrayList<>();
        return listProduct;
    }
}
