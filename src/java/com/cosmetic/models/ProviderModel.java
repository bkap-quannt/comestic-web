/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.models;

import com.cosmetic.entities.Provider;
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
public class ProviderModel {

    private SessionFactory sessionFactoryProvider = HibernateUtil.getSessionFactory(Provider.class);

    public List<Provider> getAllProvider() {
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

    public Provider getProviderByProviderId(int providerId) {
        Provider provider = new Provider();
        Session session = sessionFactoryProvider.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Provider where providerId = :id");
        query.setParameter("id", providerId);
        // Getting list of providers
        provider = (Provider) query.uniqueResult();
        session.close();
        return provider;
    }

    public boolean insertProvider(Provider provider) {
        boolean check = false;
        Session session = sessionFactoryProvider.openSession();
        Transaction transaction = session.beginTransaction();
        Provider newProvider = new Provider();
        List<Provider> categories = getAllProvider();
        newProvider.setProviderId(categories.get(categories.size() - 1).getProviderId() + 1);
        newProvider.setProviderName(provider.getProviderName());
        newProvider.setAddress(provider.getAddress());
        newProvider.setEmail(provider.getEmail());
        newProvider.setPhone(provider.getPhone());
        newProvider.setStatus(provider.getStatus());
        session.save(newProvider);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean deleteProvider(int providerId) {
        boolean check = false;
        Session session = sessionFactoryProvider.openSession();
        Transaction transaction = session.beginTransaction();
        Provider provider = getProviderByProviderId(providerId);
        session.delete(provider);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public boolean updateProvider(Provider provider) {
        boolean check = false;
        Session session = sessionFactoryProvider.openSession();
        Transaction transaction = session.beginTransaction();
        Provider editProvider = new Provider();
        int providerId = provider.getProviderId();
        editProvider.setProviderId(providerId);
        editProvider.setProviderName(provider.getProviderName());
        editProvider.setAddress(provider.getAddress());
        editProvider.setEmail(provider.getEmail());
        editProvider.setPhone(provider.getPhone());
        editProvider.setStatus(provider.getStatus());
        session.update(editProvider);
        check = true;
        transaction.commit();
        session.close();
        return check;
    }
    
    public List<Provider> serachProvider(String name) {
        List<Provider> categories = new ArrayList<Provider>();
        Session session = sessionFactoryProvider.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Provider p where p.providerName like :name");
        query.setParameter("name", "%" + name + "%");
        categories = query.list();
        session.close();
        return categories;
    }
    
    public boolean checkProviderName(String providerName) {
        boolean check = false;
        Provider provider = new Provider();
        Session session = sessionFactoryProvider.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Provider where providerName = :name");
        query.setParameter("name", providerName);
        // Getting providerName of provider
        provider = (Provider) query.uniqueResult();
        session.close();
        if(provider != null) {
            check = true;
        }
        return check;
    }
    
    public boolean checkExistsProviderName(Provider provider) {
        boolean check = false;
        Provider providerResult = new Provider();
        Session session = sessionFactoryProvider.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Provider where providerId <> :id and providerName = :name");
        query.setParameter("id", provider.getProviderId());
        query.setParameter("name", provider.getProviderName());
        // Getting provider
        providerResult = (Provider) query.uniqueResult();
        session.close();
        if(providerResult != null) {
            check = true;
        }
        return check;
    }
    
    public boolean checkProviderEmail(String email) {
        boolean check = false;
        Provider provider = new Provider();
        Session session = sessionFactoryProvider.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Provider where email = :providerEmail");
        query.setParameter("providerEmail", email);
        // Getting email of provider
        provider = (Provider) query.uniqueResult();
        session.close();
        if(provider != null) {
            check = true;
        }
        return check;
    }
    
    public boolean checkExistsProviderEmail(Provider provider) {
        boolean check = false;
        Provider providerResult = new Provider();
        Session session = sessionFactoryProvider.getCurrentSession();
        session.beginTransaction();
        // creating query
        Query query = session.createQuery("from Provider where providerId <> :id and email = :providerEmail");
        query.setParameter("id", provider.getProviderId());
        query.setParameter("providerEmail", provider.getEmail());
        // Getting provider
        providerResult = (Provider) query.uniqueResult();
        session.close();
        if(providerResult != null) {
            check = true;
        }
        return check;
    }

}
