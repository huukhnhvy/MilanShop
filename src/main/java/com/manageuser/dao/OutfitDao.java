package com.manageuser.dao;

import com.manageuser.model.Outfit;
import com.manageuser.model.Role;
import com.manageuser.model.User;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class OutfitDao extends AbstractDao<Outfit> {
    public OutfitDao(){
        super(Outfit.class);
    }
    public List<Outfit> findAll() {
        try {
            return HibernateUtil.getSessionFactory().openSession().createQuery("From Outfit ").getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
