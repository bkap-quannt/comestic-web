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
@Table(name = "users")
public class User {
    @Id
    @Column(name = "user_id")
    private int userId;
    
    @Column(name = "user_name")
    private String userName;
    
    @Column(name = "pass_word")
    private String password;
    
    @Column(name = "role_id")
    private int roleId;
    
    @Column(name = "status")
    private int status;
    
    @Column(name = "name")
    private String name;
    
    @Column(name = "created")
    private String created;
    
    @Column(name = "modified")
    private String modified;
    
    public User() {}

    public User(int userId, String userName, String password, int roleId, int status, String name, 
            String created, String modified) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.roleId = roleId;
        this.status = status;
        this.name = name;
        this.created = created;
        this.modified = modified;
    }
    

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

}
