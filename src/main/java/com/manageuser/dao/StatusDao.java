package com.manageuser.dao;

import com.manageuser.model.Status;

import java.util.List;

public class StatusDao {
    public List<Status> findAll() {
        try {
            return HibernateUtil.getSessionFactory().openSession().createQuery("From Status ").getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
