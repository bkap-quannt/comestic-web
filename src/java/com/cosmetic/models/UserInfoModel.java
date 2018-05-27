/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.models;

import com.cosmetic.entities.CreateAccount;
import com.cosmetic.entities.User;
import com.cosmetic.entities.UserInfo;
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
public class UserInfoModel {

    private SessionFactory sessionFactoryUserInfo = HibernateUtil.getSessionFactory(UserInfo.class);
    private UserModel userModel;

    public List<UserInfo> getAllUserInfo() {
        List<UserInfo> userInfos = new ArrayList<UserInfo>();
        Session session = sessionFactoryUserInfo.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from UserInfo");
        // Getting list of userInfos
        userInfos = query.list();
        session.close();
        return userInfos;
    }

    public UserInfo getUserInfoByUserInfoId(int userInfoId) {
        UserInfo userInfo = new UserInfo();
        Session session = sessionFactoryUserInfo.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from UserInfo where userInfoId = :id");
        query.setParameter("id", userInfoId);
        // Getting list of userInfos
        userInfo = (UserInfo) query.uniqueResult();
        session.close();
        return userInfo;
    }

    public boolean insertUserInfo(UserInfo userInfo) {
        boolean check = false;
        Session session = sessionFactoryUserInfo.openSession();
        Transaction transaction = session.beginTransaction();
        UserInfo newUserInfo = new UserInfo();
        List<UserInfo> userInfos = getAllUserInfo();
        int userInfosSize = userInfos.size();
        if(userInfosSize == 0) {
            newUserInfo.setUserInfoId(1);
        } else {
            newUserInfo.setUserInfoId(userInfos.get(userInfosSize - 1).getUserInfoId() + 1);
        }
        newUserInfo.setUserId(1);
        newUserInfo.setFullName(userInfo.getFullName());
        newUserInfo.setTel(userInfo.getTel());
        newUserInfo.setUserMail(userInfo.getUserMail());
        newUserInfo.setAddress(userInfo.getAddress());
        newUserInfo.setBankAccountNumber("111111111111");
        newUserInfo.setBankAccountName("ahihi");
        newUserInfo.setCityTown(userInfo.getCityTown());
        newUserInfo.setContry("VietNam");
        newUserInfo.setBirthDay(userInfo.getBirthDay());
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Calendar calendar = Calendar.getInstance();
//        newUserInfo.setBirthDay(simpleDateFormat.format(calendar.getTime()));
        newUserInfo.setBirthYear(simpleDateFormat.format(calendar.getTime()));
        newUserInfo.setCreated(simpleDateFormat.format(calendar.getTime()));
        newUserInfo.setDeleted(simpleDateFormat.format(calendar.getTime()));
        newUserInfo.setModified(simpleDateFormat.format(calendar.getTime()));
        session.save(newUserInfo);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean deleteUserInfo(int userInfoId) {
        boolean check = false;
        Session session = sessionFactoryUserInfo.openSession();
        Transaction transaction = session.beginTransaction();
        UserInfo userInfo = getUserInfoByUserInfoId(userInfoId);
        session.delete(userInfo);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean updateUserInfo(UserInfo userInfo) {
        boolean check = false;
        Session session = sessionFactoryUserInfo.openSession();
        Transaction transaction = session.beginTransaction();
        UserInfo editUserInfo = new UserInfo();
        int userInfoId = userInfo.getUserInfoId();
        editUserInfo.setUserInfoId(userInfoId);
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Calendar calendar = Calendar.getInstance();
        editUserInfo.setModified(simpleDateFormat.format(calendar.getTime()));
        UserInfo userInfoOld = getUserInfoByUserInfoId(userInfoId);
        editUserInfo.setCreated(userInfoOld.getCreated());
        editUserInfo.setDeleted(userInfoOld.getDeleted());
        session.update(editUserInfo);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public List<UserInfo> serachUserInfo(String name) {
        List<UserInfo> userInfos = new ArrayList<UserInfo>();
        Session session = sessionFactoryUserInfo.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from UserInfo ui where ui.userInfoName like :name");
        query.setParameter("name", "%" + name + "%");
        userInfos = query.list();
        session.close();
        return userInfos;
    }
    
    public boolean insertCreateAccount(CreateAccount createAccount) {
        boolean check = false;
        userModel = new UserModel();
        boolean checkUser = userModel.insertUser(createAccount.getUser());
        boolean checkUserInfo = insertUserInfo(createAccount.getUserInfo());
        if(checkUser && checkUserInfo) {
            check = true;
        }
        return check;
    }

}
