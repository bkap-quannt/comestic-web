/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author 
 */
@Entity
@Table(name = "product_color")
public class ProductColor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_color_id")
    private int productColorId;
    
    @Column(name = "color_id")
    private int colorId;
    
    @Column(name = "product_id")
    private int productId;
    
    @Column(name = "status")
    private boolean status;
    
    @Column(name = "color_name")
    private String colorName;
    
    @Column(name = "natation")
    private String natation;
    
    public ProductColor(){}

    public ProductColor(int productColorId, int colorId, int productId, boolean status, String colorName, String natation) {
        this.productColorId = productColorId;
        this.colorId = colorId;
        this.productId = productId;
        this.status = status;
        this.colorName = colorName;
        this.natation = natation;
    }

    public String getNatation() {
        return natation;
    }

    public void setNatation(String natation) {
        this.natation = natation;
    }
    

    public int getProductColorId() {
        return productColorId;
    }

    public void setProductColorId(int productColorId) {
        this.productColorId = productColorId;
    }

    public int getColorId() {
        return colorId;
    }

    public void setColorId(int colorId) {
        this.colorId = colorId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }
    
}
