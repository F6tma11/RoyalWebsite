package com.fatma.royal.web.util;

import com.fatma.royal.web.model.*;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static SessionFactory sessionFactory;
    private static final String CONFIG_FILE = "hibernate.cfg.xml";

    // ✅ Build SessionFactory once
    public static void buildSessionFactory() {
        if (sessionFactory != null) {
            return; // already built
        }

        try {
            Configuration configuration = new Configuration().configure(CONFIG_FILE);
            configuration.addAnnotatedClass(Category.class);
            configuration.addAnnotatedClass(Appartment.class);
            configuration.addAnnotatedClass(User.class);
            configuration.addAnnotatedClass(Building.class);
            configuration.addAnnotatedClass(BuildingImages.class);
            configuration.addAnnotatedClass(Message.class);
            StandardServiceRegistry serviceRegistry =
                    new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();

            sessionFactory = configuration.buildSessionFactory(serviceRegistry);
            System.out.println("✅ SessionFactory built successfully!");

        } catch (HibernateException he) {
            he.printStackTrace();
            throw new RuntimeException("❌ Failed to build SessionFactory.", he);
        }
    }

    // ✅ Always ensure SessionFactory is built before use
    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            buildSessionFactory();
        }
        return sessionFactory;
    }

    public static void shutdown() {
        if (sessionFactory != null) {
            sessionFactory.close();
        }
    }
}