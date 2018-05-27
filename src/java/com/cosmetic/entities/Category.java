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
@Table(name = "categories")
public class Category {
    @Id
    @Column(name = "category_id")
    private int categoryId;
    
    @Column(name = "category_name")
    private String categoryName;
    
    @Column(name = "description")
    private String description;
    
    @Column(name = "parent_id")
    private int parentId;
    
    @Column(name = "priority")
    private int priority;
    
    @Column(name = "deleted")
    private String deleted;
    
    @Column(name = "created")
    private String created;
    
    @Column(name = "modified")
    private String modified;
    
    public Category(){}

    public Category(int categoryId, String categoryName, String description, 
            int parentId, int priority, String deleted, String created, String modified) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.description = description;
        this.parentId = parentId;
        this.priority = priority;
        this.deleted = deleted;
        this.created = created;
        this.modified = modified;
    }
    
    public String getModified() {
        return modified;
    }

    public void setModified(String modified) {
        this.modified = modified;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }
    
    public String getDeleted() {
        return deleted;
    }

    public void setDeleted(String deleted) {
        this.deleted = deleted;
    }
    
}
