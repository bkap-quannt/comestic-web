/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.models;

import com.cosmetic.entities.Role;
import com.cosmetic.entities.User;
import com.cosmetic.entities.User;
import com.cosmetic.utils.HibernateUtil;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author
 */
public class UserModel {

    private SessionFactory sessionFactoryUser = HibernateUtil.getSessionFactory(User.class);
    private SessionFactory sessionFactoryRole = HibernateUtil.getSessionFactory(Role.class);

    public List<User> getAllUser(){
        List<User> users = new ArrayList<User>();
        Session session = sessionFactoryUser.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from User");
        // Getting list of users
        users = query.list();
        session.close();
        return users;
    }

    public User checkLogin(User user) {
        return getUserByUserNameAndPassword(user.getUserName(), user.getPassword());
    }
    
    public User getUserByUserNameAndPassword(String userName, String password) {
        User newUser = new User();
        Session session = sessionFactoryUser.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from User where userName = :user and password = :pass");
        query.setParameter("user", userName);
        query.setParameter("pass", password);
        newUser = (User) query.uniqueResult();
        session.close();
        return newUser;
    }
    
    public User getUserByUserId(int userId) {
        User user = new User();
        Session session = sessionFactoryUser.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from User where userId = :id");
        query.setParameter("id", userId);
        // Getting of user
        user = (User) query.uniqueResult();
        session.close();
        return user;
    }

    public boolean insertUser(User user) {
        boolean check = false;
        Session session = sessionFactoryUser.openSession();
        Transaction transaction = session.beginTransaction();
        User newUser = new User();
        List<User> users = getAllUser();
        newUser.setUserId(users.get(users.size() - 1).getUserId() + 1);
        newUser.setUserName(user.getUserName());
        newUser.setName(user.getUserName());
        newUser.setPassword(user.getPassword());
        newUser.setRoleId(1);
        newUser.setStatus(1);
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Calendar calendar = Calendar.getInstance();
        newUser.setCreated(simpleDateFormat.format(calendar.getTime()));
        newUser.setModified(simpleDateFormat.format(calendar.getTime()));
        session.save(newUser);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean deleteUser(int userId) {
        boolean check = false;
        Session session = sessionFactoryUser.openSession();
        Transaction transaction = session.beginTransaction();
        User user = getUserByUserId(userId);
        session.delete(user);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean updateUser(User user) {
        boolean check = false;
        Session session = sessionFactoryUser.openSession();
        Transaction transaction = session.beginTransaction();
        User editUser = new User();
        int userId = user.getUserId();
        editUser.setUserId(userId);
        editUser.setUserName(user.getUserName());
        editUser.setName(user.getName());
        editUser.setPassword(user.getPassword());
        editUser.setRoleId(user.getRoleId());
        editUser.setStatus(user.getStatus());
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Calendar calendar = Calendar.getInstance();
        editUser.setModified(simpleDateFormat.format(calendar.getTime()));
        User userOld = getUserByUserId(userId);
        editUser.setCreated(userOld.getCreated());
        session.update(editUser);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean checkUserName(String userName) {
        boolean check = false;
        User user = new User();
        Session session = sessionFactoryUser.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from User where userName = :name");
        query.setParameter("name", userName);
        // Getting userName of user
        user = (User) query.uniqueResult();
        session.close();
        if(user != null) {
            check = true;
        }
        return check;
    }
    
    public boolean checkExistsUserName(User user) {
        boolean check = false;
        User userResult = new User();
        Session session = sessionFactoryUser.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from User where userId <> :id and userName = :name");
        query.setParameter("id", user.getUserId());
        query.setParameter("name", user.getUserName());
        // Getting user
        userResult = (User) query.uniqueResult();
        session.close();
        if(userResult != null) {
            check = true;
        }
        return check;
    }

    public long getTotalUser() {
        long result = 0;
        Session session = sessionFactoryUser.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("select COUNT(userId) from User");
        result = (long) query.uniqueResult();
        session.close();
        return result;
    }
    
    public List<Role> getAllRole(){
        List<Role> roles = new ArrayList<Role>();
        Session session = sessionFactoryRole.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Role");
        // Getting list of roles
        roles = query.list();
        session.close();
        return roles;
    }
}
