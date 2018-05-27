/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.models;

import com.cosmetic.entities.ProductImage;
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
public class ProductImageModel {

    private SessionFactory sessionFactoryProductImage = HibernateUtil.getSessionFactory(ProductImage.class);

    public List<ProductImage> getAllProductImage() {
        List<ProductImage> productImages = new ArrayList<ProductImage>();
        Session session = sessionFactoryProductImage.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from ProductImage");
        // Getting list of productImage
        productImages = query.list();
        session.close();
        return productImages;
    }

    public ProductImage getProductImageByProductImageId(int productImageId) {
        ProductImage productImage = new ProductImage();
        Session session = sessionFactoryProductImage.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from ProductImage where productImageId = :id");
        query.setParameter("id", productImageId);
        // Getting list of productImage
        productImage = (ProductImage) query.uniqueResult();
        session.close();
        return productImage;
    }

    public boolean insertProductImage(ProductImage productImage) {
        boolean check = false;
        Session session = sessionFactoryProductImage.openSession();
        Transaction transaction = session.beginTransaction();
        ProductImage newProductImage = new ProductImage();
        List<ProductImage> productImages = getAllProductImage();
        newProductImage.setProductImageId(productImages.get(productImages.size() - 1).getProductImageId() + 1);
        newProductImage.setProductId(productImage.getProductId());
        newProductImage.setColorId(productImage.getColorId());
        newProductImage.setSizeId(productImage.getSizeId());
        newProductImage.setStatus(productImage.getStatus());
        newProductImage.setUrl(productImage.getUrl());
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Calendar calendar = Calendar.getInstance();
        newProductImage.setCreated(simpleDateFormat.format(calendar.getTime()));
        newProductImage.setDeleted(simpleDateFormat.format(calendar.getTime()));
        newProductImage.setModified(simpleDateFormat.format(calendar.getTime()));
        session.save(newProductImage);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean deleteProductImage(int productImageId) {
        boolean check = false;
        Session session = sessionFactoryProductImage.openSession();
        Transaction transaction = session.beginTransaction();
        ProductImage productImage = getProductImageByProductImageId(productImageId);
        session.delete(productImage);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean updateProductImage(ProductImage productImage) {
        boolean check = false;
        Session session = sessionFactoryProductImage.openSession();
        Transaction transaction = session.beginTransaction();
        ProductImage editProductImage = new ProductImage();
        int productImageId = productImage.getProductImageId();
        editProductImage.setProductImageId(productImageId);
        editProductImage.setProductId(productImage.getProductId());
        editProductImage.setColorId(productImage.getColorId());
        editProductImage.setSizeId(productImage.getSizeId());
        editProductImage.setStatus(productImage.getStatus());
        editProductImage.setUrl(productImage.getUrl());
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Calendar calendar = Calendar.getInstance();
        editProductImage.setModified(simpleDateFormat.format(calendar.getTime()));
        ProductImage productImageOld = getProductImageByProductImageId(productImageId);
        editProductImage.setCreated(productImageOld.getCreated());
        editProductImage.setDeleted(productImageOld.getDeleted());
        session.update(editProductImage);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public List<ProductImage> serachProductImage(String name) {
        List<ProductImage> productImages = new ArrayList<ProductImage>();
        Session session = sessionFactoryProductImage.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from ProductImage c where c.productImageName like :name");
        query.setParameter("name", "%" + name + "%");
        productImages = query.list();
        session.close();
        return productImages;
    }

}
