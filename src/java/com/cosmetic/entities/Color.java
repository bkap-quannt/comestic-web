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
@Table(name = "color")
public class Color {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "color_id")
    private int colorId;
    
    @Column(name = "color_name")
    private String colorName;
    
    @Column(name = "natation")
    private String natation;
    
    @Column(name = "status")
    private int status;
    
    public Color(){}

    public Color(int colorId, String colorName, String natation, int status) {
        this.colorId = colorId;
        this.colorName = colorName;
        this.natation = natation;
        this.status = status;
    }
    
    public int getColorId() {
        return colorId;
    }

    public void setColorId(int colorId) {
        this.colorId = colorId;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }

    public String getNatation() {
        return natation;
    }

    public void setNatation(String natation) {
        this.natation = natation;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
}
