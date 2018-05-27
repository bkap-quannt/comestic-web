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
 * @author Administrator
 */
@Entity
@Table(name = "address_customer")
public class AddressCustomer {
    @Id
    @GeneratedValue
    @Column(name = "address_customer_id")
    private int addressCustomerId;
    
    @Column(name = "provincial_id")
    private int provincialId;
    
    @Column(name = "address")
    private String address;
    
    @Column(name = "post_code")
    private String postCode;
    
    @Column(name = "status")
    private int status;
    
    public AddressCustomer(){}

    public AddressCustomer(int addressCustomerId, int provincialId, String address, String postCode, int status) {
        this.addressCustomerId = addressCustomerId;
        this.provincialId = provincialId;
        this.address = address;
        this.postCode = postCode;
        this.status = status;
    }

    public int getAddressCustomerId() {
        return addressCustomerId;
    }

    public int getProvincialId() {
        return provincialId;
    }

    public void setProvincialId(int provincialId) {
        this.provincialId = provincialId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }
    
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
}
