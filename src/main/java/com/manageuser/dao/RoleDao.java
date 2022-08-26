package com.manageuser.dao;

import com.manageuser.model.Role;
import com.manageuser.model.User;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class RoleDao extends AbstractDao<Role> {
    public RoleDao(){
        super(Role.class);
    }

    public List<Role> findAll() {
        try {
            return HibernateUtil.getSessionFactory().openSession().createQuery("From Role ").getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
