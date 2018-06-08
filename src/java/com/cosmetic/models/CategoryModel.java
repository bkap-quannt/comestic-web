/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.models;

import com.cosmetic.entities.Category;
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
public class CategoryModel {

    private SessionFactory sessionFactoryCategory = HibernateUtil.getSessionFactory(Category.class);

    public List<Category> getAllCategory() {
        List<Category> categories = new ArrayList<Category>();
        Session session = sessionFactoryCategory.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Category");
        // Getting list of categories
        categories = query.list();
        session.close();
        return categories;
    }
    
    public List<Category> getAllCategoryPage(int offset, int limit) {
        List<Category> categories = new ArrayList<Category>();
        Session session = sessionFactoryCategory.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Category ORDER BY categoryId");
        query.setFirstResult(offset);
        query.setMaxResults(limit);
        // Getting list of categories
        categories = query.list();
        session.close();
        return categories;
    }

    public List<Category> getCategoryRoot() {
        List<Category> categories = new ArrayList<Category>();
        Session session = sessionFactoryCategory.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Category where parentId = 0");
        // Getting list of categories
        categories = query.setMaxResults(9).list();
        session.close();
        return categories;
    }

    public List<Category> getCategoryChild(int parentId) {
        List<Category> categories = new ArrayList<Category>();
        Session session = sessionFactoryCategory.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Category where parentId = :id");
        query.setParameter("id", parentId);
        categories = query.list();
        // Getting list of categories
        categories = query.setMaxResults(9).list();
        session.close();
        return categories;
    }

    public Category getCategoryByCategoryId(int categoryId) {
        Category category = new Category();
        Session session = sessionFactoryCategory.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Category where categoryId = :id");
        query.setParameter("id", categoryId);
        // Getting list of categories
        category = (Category) query.uniqueResult();
        session.close();
        return category;
    }

    public boolean insertCategory(Category category) {
        boolean check = false;
        Session session = sessionFactoryCategory.openSession();
        Transaction transaction = session.beginTransaction();
        Category newCategory = new Category();
        List<Category> categories = getAllCategory();
        newCategory.setCategoryId(categories.get(categories.size() - 1).getCategoryId() + 1);
        newCategory.setCategoryName(category.getCategoryName());
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Calendar calendar = Calendar.getInstance();
        newCategory.setCreated(simpleDateFormat.format(calendar.getTime()));
        newCategory.setDeleted(simpleDateFormat.format(calendar.getTime()));
        newCategory.setDescription(category.getDescription());
        newCategory.setModified(simpleDateFormat.format(calendar.getTime()));
        newCategory.setParentId(category.getParentId());
        newCategory.setPriority(category.getPriority());
        session.save(newCategory);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean deleteCategory(int categoryId) {
        boolean check = false;
        Session session = sessionFactoryCategory.openSession();
        Transaction transaction = session.beginTransaction();
        Category category = getCategoryByCategoryId(categoryId);
        session.delete(category);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean updateCategory(Category category) {
        boolean check = false;
        Session session = sessionFactoryCategory.openSession();
        Transaction transaction = session.beginTransaction();
        Category editCategory = new Category();
        int categoryId = category.getCategoryId();
        editCategory.setCategoryId(categoryId);
        editCategory.setCategoryName(category.getCategoryName());
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Calendar calendar = Calendar.getInstance();
        editCategory.setModified(simpleDateFormat.format(calendar.getTime()));
        Category categoryOld = getCategoryByCategoryId(categoryId);
        editCategory.setCreated(categoryOld.getCreated());
        editCategory.setDeleted(categoryOld.getDeleted());
        editCategory.setDescription(category.getDescription());
        editCategory.setParentId(category.getParentId());
        editCategory.setPriority(category.getPriority());
        session.update(editCategory);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public List<Category> serachCategory(String name) {
        List<Category> categories = new ArrayList<Category>();
        Session session = sessionFactoryCategory.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Category c where c.categoryName like :name");
        query.setParameter("name", "%" + name + "%");
        categories = query.list();
        session.close();
        return categories;
    }

}
