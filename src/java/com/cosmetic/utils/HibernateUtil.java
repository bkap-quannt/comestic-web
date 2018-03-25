/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.utils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

/**
 *
 * @author Tuan
 */
public class HibernateUtil {
    private static SessionFactory sessionFactory;          
    public static SessionFactory getSessionFactory(Class entity) {
        try {
            sessionFactory = new AnnotationConfiguration().
                    configure().
                    addPackage("entity"). //add package if used.
                    addAnnotatedClass(entity).
                    buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Failed to create sessionFactory object." + ex);
            throw new ExceptionInInitializerError(ex);
        }
        return sessionFactory;
    }
}
