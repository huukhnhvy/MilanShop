package com.manageuser.dao;

import com.manageuser.model.*;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class CategoryDao extends AbstractDao<Category> {
    public CategoryDao(){
        super(Category.class);
    }

    public List<Category> findAll() {
        try {
            return HibernateUtil.getSessionFactory().openSession().createQuery("From Category ").getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
