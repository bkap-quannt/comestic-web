/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.entities;

import java.sql.Date;
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
@Table(name = "Orders")
public class Order {

     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="OrderId")
    private int orderId;
  
    @Column(name="OrderName")
    private String orderName;
    
    @Column(name="OrderNumber")
    private String orderNumber;
    
    @Column(name="Phone")
    private String phone;
    
    @Column(name="Email")
    private String email;
    
    @Column(name="Address")
    private String address;
    
    @Column(name="TotalAmount")
    private double totalAmount;
    
    @Column(name="PaymentDate")
    private String paymentDate;
    
     @Column(name="PaymentMethod")
    private String paymentMethod;
     
     @Column(name="CreatedDate")
    private Date created;
     
    @Column(name="Status")
     private int status;
    
    public Order() {}

    public Order(int orderId, String orderName, String orderNumber, String phone, String email, String address, 
            double totalAmount, String paymentDate, String paymentMethod, Date created, int status) {
        this.orderId = orderId;
        this.orderName = orderName;
        this.orderNumber = orderNumber;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.totalAmount = totalAmount;
        this.paymentDate = paymentDate;
        this.paymentMethod = paymentMethod;
        this.created = created;
        this.status = status;
    }
    

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

   

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(String paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    
    
    
    
    
}
