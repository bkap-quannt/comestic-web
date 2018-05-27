/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author
 */
@Entity
@Table(name = "user_infos")
public class UserInfo {
    @Id
    @Column(name = "user_info_id")
    private int userInfoId;
    
    @Column(name = "user_id")
    private int userId;
    
    @Column(name = "full_name")
    private String fullName;
    
    @Column(name = "tel")
    private String tel;
    
    @Column(name = "user_mail")
    private String userMail;
    
    @Column(name = "birthday")
    private String birthDay;
    
    @Column(name = "birth_year")
    private String birthYear;
    
    @Column(name = "address")
    private String address;
    
    @Column(name = "created")
    private String created;
    
    @Column(name = "modified")
    private String modified;
    
    @Column(name = "deleted")
    private String deleted;
    
    @Column(name = "bank_account_number")
    private String bankAccountNumber;
    
    @Column(name = "bank_account_name")
    private String bankAccountName;
    
    @Column(name = "city_town")
    private String cityTown;
    
    @Column(name = "contry")
    private String contry;
    
    public UserInfo() {}

    public UserInfo(int userInfoId, int userId, String fullName, String tel, String userMail, String birthDay, String birthYear, 
            String address, String created, String modified, String deleted, String bankAccountNumber, 
            String bankAccountName, String cityTown, String contry) {
        this.userInfoId = userInfoId;
        this.userId = userId;
        this.fullName = fullName;
        this.tel = tel;
        this.userMail = userMail;
        this.birthDay = birthDay;
        this.birthYear = birthYear;
        this.address = address;
        this.created = created;
        this.modified = modified;
        this.deleted = deleted;
        this.bankAccountNumber = bankAccountNumber;
        this.bankAccountName = bankAccountName;
        this.cityTown = cityTown;
        this.contry = contry;
    }

    public int getUserInfoId() {
        return userInfoId;
    }

    public void setUserInfoId(int userInfoId) {
        this.userInfoId = userInfoId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getUserMail() {
        return userMail;
    }

    public void setUserMail(String userMail) {
        this.userMail = userMail;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }
    
    public String getBirthYear() {
        return birthYear;
    }

    public void setBirthYear(String birthYear) {
        this.birthYear = birthYear;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getDeleted() {
        return deleted;
    }

    public void setDeleted(String deleted) {
        this.deleted = deleted;
    }

    public String getBankAccountNumber() {
        return bankAccountNumber;
    }

    public void setBankAccountNumber(String bankAccountNumber) {
        this.bankAccountNumber = bankAccountNumber;
    }

    public String getBankAccountName() {
        return bankAccountName;
    }

    public void setBankAccountName(String bankAccountName) {
        this.bankAccountName = bankAccountName;
    }

    public String getCityTown() {
        return cityTown;
    }

    public void setCityTown(String cityTown) {
        this.cityTown = cityTown;
    }

    public String getContry() {
        return contry;
    }

    public void setContry(String contry) {
        this.contry = contry;
    }

}
