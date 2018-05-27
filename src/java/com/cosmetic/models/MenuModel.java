/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.models;

import com.cosmetic.entities.Menu;
import com.cosmetic.entities.Menu;
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
public class MenuModel {

    private SessionFactory sessionFactoryMenu = HibernateUtil.getSessionFactory(Menu.class);

    public List<Menu> getAllMenu() {
        List<Menu> menus = new ArrayList<Menu>();
        Session session = sessionFactoryMenu.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Menu");
        // Getting list of menus
        menus = query.list();
        session.close();
        return menus;
    }

    public Menu getMenuByMenuId(int menuId) {
        Menu menu = new Menu();
        Session session = sessionFactoryMenu.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Menu where menuId = :id");
        query.setParameter("id", menuId);
        // Getting list of menus
        menu = (Menu) query.uniqueResult();
        session.close();
        return menu;
    }

    public boolean insertMenu(Menu menu) {
        boolean check = false;
        Session session = sessionFactoryMenu.openSession();
        Transaction transaction = session.beginTransaction();
        Menu newMenu = new Menu();
        List<Menu> menus = getAllMenu();
        newMenu.setMenuId(menus.get(menus.size() - 1).getMenuId() + 1);
        newMenu.setMenuName(menu.getMenuName());
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Calendar calendar = Calendar.getInstance();
        newMenu.setCreated(simpleDateFormat.format(calendar.getTime()));
        newMenu.setDeleted(simpleDateFormat.format(calendar.getTime()));
        newMenu.setModified(simpleDateFormat.format(calendar.getTime()));
        session.save(newMenu);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean deleteMenu(int menuId) {
        boolean check = false;
        Session session = sessionFactoryMenu.openSession();
        Transaction transaction = session.beginTransaction();
        Menu menu = getMenuByMenuId(menuId);
        session.delete(menu);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean updateMenu(Menu menu) {
        boolean check = false;
        Session session = sessionFactoryMenu.openSession();
        Transaction transaction = session.beginTransaction();
        Menu editMenu = new Menu();
        int menuId = menu.getMenuId();
        editMenu.setMenuId(menuId);
        editMenu.setMenuName(menu.getMenuName());
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Calendar calendar = Calendar.getInstance();
        editMenu.setModified(simpleDateFormat.format(calendar.getTime()));
        Menu menuOld = getMenuByMenuId(menuId);
        editMenu.setCreated(menuOld.getCreated());
        editMenu.setDeleted(menuOld.getDeleted());
        session.update(editMenu);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean checkMenuName(String menuName) {
        boolean check = false;
        Menu menu = new Menu();
        Session session = sessionFactoryMenu.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Menu where menuName = :name");
        query.setParameter("name", menuName);
        // Getting menuName of menu
        menu = (Menu) query.uniqueResult();
        session.close();
        if(menu != null) {
            check = true;
        }
        return check;
    }
    
    public boolean checkExistsMenuName(Menu menu) {
        boolean check = false;
        Menu menuResult = new Menu();
        Session session = sessionFactoryMenu.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Menu where menuId <> :id and menuName = :name");
        query.setParameter("id", menu.getMenuId());
        query.setParameter("name", menu.getMenuName());
        // Getting menu
        menuResult = (Menu) query.uniqueResult();
        session.close();
        if(menuResult != null) {
            check = true;
        }
        return check;
    }

}
