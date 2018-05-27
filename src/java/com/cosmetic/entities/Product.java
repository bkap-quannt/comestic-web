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
 * @author 
 */
@Entity
@Table(name = "products")
public class Product {
    @Id
    @Column(name = "product_id")
    private int productId;
    
    @Column(name = "product_code")
    private String productCode;
    
    @Column(name = "product_from")
    private String productFrom;
    
    @Column(name = "product_name")
    private String productName;
    
    @Column(name = "description")
    private String description;
    
    @Column(name = "description_detail")
    private String descriptionDetail;
    
    @Column(name = "menu_id")
    private int menuId;
    
    @Column(name = "category_id")
    private int categoryId;
    
    @Column(name = "image_link")
    private String imageLink;
    
    @Column(name = "price")
    private double price;
    
    @Column(name = "in_stock")
    private int inStock;
    
    @Column(name = "flag_sale")
    private int flagSale;
    
    @Column(name = "price_sale")
    private long priceSale;
    
    @Column(name = "creater")
    private int creater;
    
    @Column(name = "editer")
    private int editer;
    
    @Column(name = "deleted")
    private String deleted;
    
    @Column(name = "created")
    private String created;
    
    @Column(name = "modified")
    private String modified;
    
    @Column(name = "product_status")
    private int productStatus;
    
    @Column(name = "discount")
    private int discount;
    
    @Column(name = "reviews")
    private int reviews;
    
    @Column(name = "provider_id")
    private int providerId;
    
    public Product() {}
    
    public Product(int productId, String productCode, String productFrom, 
            String productName, String description, String descriptionDetail, 
            int menuId, int categoryId, String imageLink, double price, 
            int inStock, int flagSale, long priceSale, int creater, 
            int editer, String deleted, String created, String modified, 
            int productStatus, int discount, int reviews, int providerId) {
        this.productId = productId;
        this.productCode = productCode;
        this.productFrom = productFrom;
        this.productName = productName;
        this.description = description;
        this.descriptionDetail = descriptionDetail;
        this.menuId = menuId;
        this.categoryId = categoryId;
        this.imageLink = imageLink;
        this.price = price;
        this.inStock = inStock;
        this.flagSale = flagSale;
        this.priceSale = priceSale;
        this.creater = creater;
        this.editer = editer;
        this.deleted = deleted;
        this.created = created;
        this.modified = modified;
        this.productStatus = productStatus;
        this.discount = discount;
        this.reviews = reviews;
        this.providerId = providerId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public String getProductFrom() {
        return productFrom;
    }

    public void setProductFrom(String productFrom) {
        this.productFrom = productFrom;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getDescriptionDetail() {
        return descriptionDetail;
    }

    public void setDescriptionDetail(String descriptionDetail) {
        this.descriptionDetail = descriptionDetail;
    }

    public int getMenuId() {
        return menuId;
    }

    public void setMenuId(int menuId) {
        this.menuId = menuId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getImageLink() {
        return imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getInStock() {
        return inStock;
    }

    public void setInStock(int inStock) {
        this.inStock = inStock;
    }

    public int getFlagSale() {
        return flagSale;
    }

    public void setFlagSale(int flagSale) {
        this.flagSale = flagSale;
    }

    public long getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(long priceSale) {
        this.priceSale = priceSale;
    }

    public int getCreater() {
        return creater;
    }

    public void setCreater(int creater) {
        this.creater = creater;
    }

    public int getEditer() {
        return editer;
    }

    public void setEditer(int editer) {
        this.editer = editer;
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

    public int getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(int productStatus) {
        this.productStatus = productStatus;
    }
    
    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }
    
    public int getReviews() {
        return reviews;
    }

    public void setReviews(int reviews) {
        this.reviews = reviews;
    }
    
    public int getProviderId() {
        return providerId;
    }

    public void setProviderId(int providerId) {
        this.providerId = providerId;
    }
    
}
