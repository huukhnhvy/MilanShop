package com.manageuser.dao;


import com.manageuser.model.*;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import java.util.Properties;

public class HibernateUtil {
 private static SessionFactory sessionFactory;

 public static SessionFactory getSessionFactory() {
  if (sessionFactory == null) {
   try {
    Configuration configuration = new Configuration();

    // Hibernate settings equivalent to hibernate.cfg.xml's properties
    Properties settings = new Properties();
    settings.put(Environment.DRIVER, "com.microsoft.sqlserver.jdbc.SQLServerDriver");
    settings.put(Environment.URL, "jdbc:sqlserver://localhost:1433;databaseName=MiLanShop");
    settings.put(Environment.USER, "sa");
    settings.put(Environment.PASS, "1808");
    settings.put(Environment.DIALECT, "org.hibernate.dialect.SQLServer2012Dialect");

    settings.put(Environment.SHOW_SQL, "true");

    settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");

    // settings.put(Environment.HBM2DDL_AUTO, "create-drop");

    configuration.setProperties(settings);
    configuration.addAnnotatedClass(Role.class);
    configuration.addAnnotatedClass(User.class);
    configuration.addAnnotatedClass(Product.class);
    configuration.addAnnotatedClass(ProductDetail.class);
    configuration.addAnnotatedClass(Outfit.class);
    configuration.addAnnotatedClass(Category.class);
    configuration.addAnnotatedClass(Bill.class);
    configuration.addAnnotatedClass(BillDetails.class);
    configuration.addAnnotatedClass(Status.class);


    ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
      .applySettings(configuration.getProperties()).build();
    System.out.println("Hibernate Java Config serviceRegistry created");
    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
    return sessionFactory;

   } catch (Exception e) {
    e.printStackTrace();
   }
  }
  return sessionFactory;
 }
}