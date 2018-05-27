/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.models;

import com.cosmetic.entities.Color;
import com.cosmetic.entities.Color;
import com.cosmetic.entities.Product;
import com.cosmetic.entities.Size;
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
public class ColorAndSizeModel {

    private SessionFactory sessionFactoryColor = HibernateUtil.getSessionFactory(Color.class);
    private SessionFactory sessionFactorySize = HibernateUtil.getSessionFactory(Size.class);

    public List<Color> getAllColor() {
        List<Color> colors = new ArrayList<Color>();
        Session session = sessionFactoryColor.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Color");
        // Getting list of Color
        colors = query.setMaxResults(9).list();
        session.close();
        return colors;
    }
    
    public List<Size> getAllSize() {
        List<Size> listSize = new ArrayList<Size>();
        Session session = sessionFactorySize.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Size");
        // Getting list of listSize
        listSize = query.setMaxResults(5).list();
        session.close();
        return listSize;
    }
    
    public List<Color> getAllColors() {
        List<Color> colors = new ArrayList<Color>();
        Session session = sessionFactoryColor.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Color");
        // Getting list of Color
        colors = query.list();
        session.close();
        return colors;
    }
    
    public Color getColorByColorId(int colorId) {
        Color color = new Color();
        Session session = sessionFactoryColor.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Color where colorId = :id");
        query.setParameter("id", colorId);
        // Getting colorId of color
        color = (Color) query.uniqueResult();
        session.close();
        return color;
    }

    public boolean insertColor(Color color) {
        boolean check = false;
        Session session = sessionFactoryColor.openSession();
        Transaction transaction = session.beginTransaction();
        Color newColor = new Color();
        List<Color> colors = getAllColor();
        newColor.setColorId(colors.get(colors.size() - 1).getColorId() + 1);
        newColor.setColorName(color.getColorName());
        newColor.setNatation(color.getNatation());
        newColor.setStatus(color.getStatus());
        session.save(newColor);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean deleteColor(int colorId) {
        boolean check = false;
        Session session = sessionFactoryColor.openSession();
        Transaction transaction = session.beginTransaction();
        Color color = getColorByColorId(colorId);
        session.delete(color);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean updateColor(Color color) {
        boolean check = false;
        Session session = sessionFactoryColor.openSession();
        Transaction transaction = session.beginTransaction();
        Color editColor = new Color();
        int colorId = color.getColorId();
        editColor.setColorId(colorId);
        editColor.setColorName(color.getColorName());
        editColor.setNatation(color.getNatation());
        editColor.setStatus(color.getStatus());
        session.update(editColor);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean checkColorName(String colorName) {
        boolean check = false;
        Color color = new Color();
        Session session = sessionFactoryColor.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Color where colorName = :name");
        query.setParameter("name", colorName);
        // Getting colorName of color
        color = (Color) query.uniqueResult();
        session.close();
        if(color != null) {
            check = true;
        }
        return check;
    }
    
    public boolean checkExistsColorName(Color color) {
        boolean check = false;
        Color colorResult = new Color();
        Session session = sessionFactoryColor.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Color where colorId <> :id and colorName = :name");
        query.setParameter("id", color.getColorId());
        query.setParameter("name", color.getColorName());
        // Getting color
        colorResult = (Color) query.uniqueResult();
        session.close();
        if(colorResult != null) {
            check = true;
        }
        return check;
    }
    
    public List<Size> getAllSizes() {
        List<Size> listSize = new ArrayList<Size>();
        Session session = sessionFactorySize.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Size");
        // Getting list of listSize
        listSize = query.list();
        session.close();
        return listSize;
    }
    
    public Size getSizeBySizeId(int sizeId) {
        Size size = new Size();
        Session session = sessionFactorySize.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Size where sizeId = :id");
        query.setParameter("id", sizeId);
        // Getting list of sizes
        size = (Size) query.uniqueResult();
        session.close();
        return size;
    }

    public boolean insertSize(Size size) {
        boolean check = false;
        Session session = sessionFactorySize.openSession();
        Transaction transaction = session.beginTransaction();
        Size newSize = new Size();
        List<Size> sizes = getAllSize();
        newSize.setSizeId(sizes.get(sizes.size() - 1).getSizeId() + 1);
        newSize.setSizeName(size.getSizeName());
        newSize.setDescriptions(size.getDescriptions());
        newSize.setNatation(size.getNatation());
        newSize.setStatus(size.getStatus());
        session.save(newSize);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean deleteSize(int sizeId) {
        boolean check = false;
        Session session = sessionFactorySize.openSession();
        Transaction transaction = session.beginTransaction();
        Size size = getSizeBySizeId(sizeId);
        session.delete(size);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean updateSize(Size size) {
        boolean check = false;
        Session session = sessionFactorySize.openSession();
        Transaction transaction = session.beginTransaction();
        Size editSize = new Size();
        int sizeId = size.getSizeId();
        editSize.setSizeId(sizeId);
        editSize.setSizeName(size.getSizeName());
        editSize.setDescriptions(size.getDescriptions());
        editSize.setNatation(size.getNatation());
        editSize.setStatus(size.getStatus());
        session.update(editSize);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean checkSizeName(String sizeName) {
        boolean check = false;
        Size size = new Size();
        Session session = sessionFactorySize.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Size where sizeName = :name");
        query.setParameter("name", sizeName);
        // Getting sizeName of size
        size = (Size) query.uniqueResult();
        session.close();
        if(size != null) {
            check = true;
        }
        return check;
    }
    
    public boolean checkExistsSizeName(Size size) {
        boolean check = false;
        Size sizeResult = new Size();
        Session session = sessionFactorySize.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Size where sizeId <> :id and sizeName = :name");
        query.setParameter("id", size.getSizeId());
        query.setParameter("name", size.getSizeName());
        // Getting size
        sizeResult = (Size) query.uniqueResult();
        session.close();
        if(sizeResult != null) {
            check = true;
        }
        return check;
    }

}
