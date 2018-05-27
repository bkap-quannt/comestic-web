/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Tuan
 */
@Entity
@Table(name = "products_images")
public class ProductImage {
    @Id
    @Column(name = "products_image_id")
    private int productImageId;
    
    @Column(name = "product_id")
    private int productId;
    
    @Column(name = "color_id")
    private int colorId;
    
    @Column(name = "size_id")
    private int sizeId;
    
    @Column(name = "url")
    private String url;
    
    @Column(name = "deleted")
    private String deleted;
    
    @Column(name = "created")
    private String created;
    
    @Column(name = "modified")
    private String modified;
    
    @Column(name = "status")
    private int status;

    public ProductImage() {}
    
    public ProductImage(int productImageId, int productId, String url, String deleted, String created, 
            String modified, int status, int colorId, int sizeId) {
        this.productImageId = productImageId;
        this.productId = productId;
        this.colorId = colorId;
        this.sizeId = sizeId;
        this.url = url;
        this.deleted = deleted;
        this.created = created;
        this.modified = modified;
        this.status = status;
    }

    public int getProductImageId() {
        return productImageId;
    }

    public void setProductImageId(int productImageId) {
        this.productImageId = productImageId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDeleted() {
        return deleted;
    }

    public void setDeleted(String deleted) {
        this.deleted = deleted;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public String getModified() {
        return modified;
    }

    public void setModified(String modified) {
        this.modified = modified;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getColorId() {
        return colorId;
    }

    public void setColorId(int colorId) {
        this.colorId = colorId;
    }

    public int getSizeId() {
        return sizeId;
    }

    public void setSizeId(int sizeId) {
        this.sizeId = sizeId;
    }
    
    
    
}
