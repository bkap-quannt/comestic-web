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
@Table(name = "size")
public class Size {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "size_id")
    private int sizeId;
    
    @Column(name = "size_name")
    private String sizeName;
    
    @Column(name = "descriptions")
    private String descriptions;
    
    @Column(name = "status")
    private int status;
    
    @Column(name = "natation")
    private String natation;
    
    public Size(){}

    public Size(int sizeId, String sizeName, String descriptions, int status, String natation) {
        this.sizeId = sizeId;
        this.sizeName = sizeName;
        this.descriptions = descriptions;
        this.status = status;
        this.natation = natation;
    }
    
    public int getSizeId() {
        return sizeId;
    }

    public void setSizeId(int sizeId) {
        this.sizeId = sizeId;
    }

    public String getSizeName() {
        return sizeName;
    }

    public void setSizeName(String sizeName) {
        this.sizeName = sizeName;
    }

    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

   

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
    public String getNatation() {
        return natation;
    }

    public void setNatation(String natation) {
        this.natation = natation;
    }
    
}
