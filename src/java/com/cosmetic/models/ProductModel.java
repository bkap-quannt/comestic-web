/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.models;

import com.cosmetic.entities.Order;
import com.cosmetic.entities.Orderdetail;
import com.cosmetic.entities.Product;
import com.cosmetic.entities.ProductColor;
import com.cosmetic.entities.ProductImage;
import com.cosmetic.entities.Provider;
import com.cosmetic.entities.User1;
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
 * @author Administrator
 */
public class ProductModel {

    private UserModel userModel = new UserModel();
    private SessionFactory sessionFactoryProduct = HibernateUtil.getSessionFactory(Product.class);
    private SessionFactory sessionFactoryPI = HibernateUtil.getSessionFactory(ProductImage.class);
    private SessionFactory sessionFactoryProvider = HibernateUtil.getSessionFactory(Provider.class);
    private SessionFactory sessionFactoryProductColor = HibernateUtil.getSessionFactory(ProductColor.class);
    private SessionFactory sessionFactoryUser = HibernateUtil.getSessionFactory(User1.class);
    private SessionFactory sessionFactoryOrder = HibernateUtil.getSessionFactory(Order.class);
    private SessionFactory sessionFactoryOrderDetail = HibernateUtil.getSessionFactory(Orderdetail.class);

    public List<Product> getAllProduct() {
        List<Product> products = new ArrayList<Product>();
        Session session = sessionFactoryProduct.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Product");
        // Getting list of products
        products = query.list();
        session.close();
        return products;
    }

    public List<ProductImage> getProductsImagesByProductId(int productId) {
        List<ProductImage> productImages = new ArrayList<ProductImage>();
        Session session = sessionFactoryPI.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from ProductImage where productId = :id");
        query.setParameter("id", productId);
        // Getting list of productImages
        productImages = query.list();
        session.close();
        return productImages;
    }

    public Product getProductDetail(int productId) {
        Product product = new Product();
        product = getProductsByProductId(productId);
        product.setReviews(product.getReviews() + 1);
        updateProductWithReview(product);
        return product;
    }
    
    public Product getProductsByProductId(int productId) {
        Product product = new Product();
        Session session = sessionFactoryProduct.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Product where productId = :id");
        query.setParameter("id", productId);
        product = (Product) query.uniqueResult();
        session.close();
        return product;
    }
    
    public boolean insertProduct(Product product) {
        boolean check = false;
        Session session = sessionFactoryProduct.openSession();
        Transaction transaction = session.beginTransaction();
        Product newProduct = new Product();
        List<Product> products = getAllProduct();
        newProduct.setProductId(products.get(products.size() - 1).getProductId() + 1);
        newProduct.setProductCode(product.getProductCode());
        newProduct.setProductFrom(product.getProductFrom());
        newProduct.setProductName(product.getProductName());
        newProduct.setDescription(product.getDescription());
        newProduct.setDescriptionDetail(product.getDescriptionDetail());
        newProduct.setCategoryId(product.getCategoryId());
        newProduct.setMenuId(product.getMenuId());
        newProduct.setProviderId(product.getProviderId());
        newProduct.setDiscount(product.getDiscount());
        newProduct.setFlagSale(product.getFlagSale());
        newProduct.setImageLink(product.getImageLink());
        newProduct.setInStock(product.getInStock());
        newProduct.setPrice(product.getPrice());
        newProduct.setPriceSale(product.getPriceSale());
        newProduct.setProductStatus(product.getProductStatus());
        newProduct.setReviews(product.getReviews());
//        String userName = (String)httpSession.getAttribute("userName");
//        String password = (String)httpSession.getAttribute("password");
//        int userId = userModel.getUserByUserNameAndPassword(userName, password).getUserId();
        newProduct.setCreater(1);
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Calendar calendar = Calendar.getInstance();
        newProduct.setCreated(simpleDateFormat.format(calendar.getTime()));
        newProduct.setDeleted(simpleDateFormat.format(calendar.getTime()));
        newProduct.setModified(simpleDateFormat.format(calendar.getTime()));
        session.save(newProduct);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean deleteProduct(int productId) {
        boolean check = false;
        Session session = sessionFactoryProduct.openSession();
        Transaction transaction = session.beginTransaction();
        Product product = getProductsByProductId(productId);
        session.delete(product);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean updateProduct(Product product) {
        boolean check = false;
        Session session = sessionFactoryProduct.openSession();
        Transaction transaction = session.beginTransaction();
        Product editProduct = new Product();
        int productId = product.getProductId();
        editProduct.setProductId(productId);
        editProduct.setProductCode(product.getProductCode());
        editProduct.setProductFrom(product.getProductFrom());
        editProduct.setProductName(product.getProductName());
        editProduct.setDescription(product.getDescription());
        editProduct.setDescriptionDetail(product.getDescriptionDetail());
        editProduct.setCategoryId(product.getCategoryId());
        editProduct.setMenuId(product.getMenuId());
        editProduct.setProviderId(product.getProviderId());
        editProduct.setDiscount(product.getDiscount());
        editProduct.setFlagSale(product.getFlagSale());
        editProduct.setImageLink(product.getImageLink());
        editProduct.setInStock(product.getInStock());
        editProduct.setPrice(product.getPrice());
        editProduct.setPriceSale(product.getPriceSale());
        editProduct.setProductStatus(product.getProductStatus());
        editProduct.setReviews(product.getReviews());
        editProduct.setCreater(product.getCreater());
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Calendar calendar = Calendar.getInstance();
        editProduct.setModified(simpleDateFormat.format(calendar.getTime()));
        Product productOld = getProductsByProductId(productId);
        editProduct.setCreated(productOld.getCreated());
        editProduct.setDeleted(productOld.getDeleted());
        session.update(editProduct);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }

    private void updateProductWithReview(Product product) {
        Session session = sessionFactoryProduct.openSession();
        Transaction transaction = session.beginTransaction();
        session.update(product);
        transaction.commit();
        session.close();
    }

    public List<Product> getProductHot() {
        List<Product> products = new ArrayList<Product>();
        Session session = sessionFactoryProduct.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Product as p order by p.reviews desc");
        // Getting list of products
        products = query.setMaxResults(5).list();
        session.close();
        return products;
    }

    public List<Product> serachProduct(String name) {
        List<Product> products = new ArrayList<Product>();
        Session session = sessionFactoryProduct.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Product p where p.productName like :name");
        query.setParameter("name", "%" + name + "%");
        products = query.list();
        session.close();
        return products;
    }

    public List<Product> getProductByCategoryId(int categoryId) {
        List<Product> products = new ArrayList<Product>();
        Session session = sessionFactoryProduct.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Product p where p.categoryId = :id");
        query.setParameter("id", categoryId);
        products = query.list();
        session.close();
        return products;
    }

    public List<Product> filterPrice(String amount) {
        List<Product> products = new ArrayList<Product>();
        Session session = sessionFactoryProduct.getCurrentSession();
        session.beginTransaction();
        String[] strPrice = amount.trim().split("-");
        double priceFrom = Double.parseDouble(strPrice[0].trim().substring(1));
        double priceTo = Double.parseDouble(strPrice[1].trim().substring(1));
        // creating query
        Query query = session.createQuery("from Product p where p.price BETWEEN :priceFrom AND :priceTo");
        query.setParameter("priceFrom", priceFrom);
        query.setParameter("priceTo", priceTo);
        products = query.list();
        session.close();
        return products;
    }

    public List<Provider> getAllProviders() {
        List<Provider> providers = new ArrayList<Provider>();
        Session session = sessionFactoryProvider.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Provider");
        // Getting list of providers
        providers = query.list();
        session.close();
        return providers;
    }
    
    public Provider getProvider(int providerId) {
        Provider provider = new Provider();
        Session session = sessionFactoryProvider.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Provider where providerId = :id");
        query.setParameter("id", providerId);
        provider = (Provider) query.uniqueResult();
        session.close();
        return provider;
    }

    public List<Product> getProductByProviderId(int providerId) {
        List<Product> products = new ArrayList<Product>();
        Session session = sessionFactoryProduct.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Product p where p.providerId = :id");
        query.setParameter("id", providerId);
        products = query.list();
        session.close();
        return products;
    }

    public List<Product> getProductByColorId(int colorId) {
        List<Product> products = new ArrayList<Product>();
        List<Integer> listProductId = getProductColorByColorId(colorId);
        if (!listProductId.isEmpty()) {
            for (int productId : listProductId) {
                Product product = new Product();
                product = getProductsByProductId(productId);
                products.add(product);
            }
        }
        return products;
    }

    private List<Integer> getProductColorByColorId(int colorId) {
        List<Integer> listProductId = new ArrayList<Integer>();
        Session session = sessionFactoryProductColor.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("select pc.productId from ProductColor pc where pc.colorId = :id");
        query.setParameter("id", colorId);
        listProductId = query.list();
        session.close();
        return listProductId;
    }
    
    public List<Product> getAllProductSortPriceAsc() {
        List<Product> products = new ArrayList<Product>();
        Session session = sessionFactoryProduct.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Product as p order by p.price asc");
        // Getting list of products
        products = query.setMaxResults(12).list();
        session.close();
        return products;
    }
    
    public List<Product> getAllProductSortPriceDesc() {
        List<Product> products = new ArrayList<Product>();
        Session session = sessionFactoryProduct.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Product as p order by p.price desc");
        // Getting list of products
        products = query.setMaxResults(12).list();
        session.close();
        return products;
    }
    
    public List<Product> getAllProductByPopularity() {
        List<Product> products = new ArrayList<Product>();
        Session session = sessionFactoryProduct.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Product as p order by p.reviews desc");
        // Getting list of products
        products = query.setMaxResults(12).list();
        session.close();
        return products;
    }
    
    public Order getOrderNew() {
        Order order = new Order();
        Session session = sessionFactoryOrder.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery(" from Order o ORDER BY o.orderId desc ");
        order = (Order) query.setMaxResults(1).uniqueResult();
        session.close();
        return order;
    }

    public boolean checkLogin(User1 user) {
        boolean result = false;
        User1 us = new User1();
        Session session = sessionFactoryUser.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from User1  where userName = :name and password = :pass");
        query.setParameter("name", user.getUserName());
        query.setParameter("pass", user.getPassword());
        us = (User1) query.uniqueResult();
        if (us != null) {
            result = true;
        }
        session.close();
        return result;
    }

    public boolean insertUser(User1 user) {
        boolean result = false;
        Session session = sessionFactoryUser.openSession();
        Transaction transaction = session.beginTransaction();
        User1 us = new User1();
        us.setUserName(user.getUserName());
        us.setPassword(user.getPassword());
        us.setEmail(user.getEmail());
        us.setAddress(user.getAddress());
        us.setPhone(user.getPhone());
        us.setStatus(true);
        session.save(us);
        result = true;
        transaction.commit();
        session.close();
        return result;
    }

    public boolean insertOrderDetail(Orderdetail order) {
        boolean result = false;
        Orderdetail odt = new Orderdetail();
        Session session = sessionFactoryOrderDetail.openSession();
        Transaction transaction = session.beginTransaction();
        odt.setStatus(1);
        odt.setProductName(order.getProductName());
        odt.setPrice(order.getPrice());
        odt.setQuantity(order.getQuantity());
        odt.setAmount(order.getAmount());
        odt.setNote(order.getNote());
        odt.setOrderDetailId(1);
        odt.setOrderId(order.getOrderId());
        odt.setProductId(order.getProductId());
        session.save(odt);
        transaction.commit();
        result = true;
        session.close();
        return result;
    }

    public boolean insertOrder(Order order) {
        boolean result = false;
        java.util.Date date = new java.util.Date();
        Session session = sessionFactoryOrder.openSession();
        Transaction transaction = session.beginTransaction();
        Order od = new Order();
        od.setOrderName(order.getOrderName());
        od.setOrderNumber(order.getOrderNumber());
        od.setPhone(order.getPhone());
        od.setEmail(order.getEmail());
        od.setAddress(order.getAddress());
        od.setTotalAmount(order.getTotalAmount());
        od.setPaymentDate(order.getPaymentDate());
        od.setPaymentMethod(order.getPaymentMethod());

        od.setCreated(convertUtilToSql(date));
        od.setStatus(0);
        session.save(od);
        result = true;
        transaction.commit();
        session.close();
        return result;
    }

    private static java.sql.Date convertUtilToSql(java.util.Date uDate) {
        java.sql.Date sDate = new java.sql.Date(uDate.getTime());
        return sDate;
    }
    
    /**
     * lay thong tin user theo user name
     *
     * @return
     */
    public User1 getUserByUserName(String userName) {
        User1 user = new User1();
        Session session = sessionFactoryUser.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from User1 where userName = :username ");
        query.setParameter("username", userName);
        // Getting list of products
        user = (User1) query.uniqueResult();
        session.close();
        return user;
    }

}
