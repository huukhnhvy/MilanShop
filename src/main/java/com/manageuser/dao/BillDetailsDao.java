package com.manageuser.dao;

import com.manageuser.model.BillDetails;
import com.manageuser.model.Category;
import com.manageuser.model.Product;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;

public class BillDetailsDao extends AbstractDao<BillDetails> {
    public BillDetailsDao(){
        super(BillDetails.class);
    }

    public List<BillDetails> findByBill(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select u from BillDetails u where u.bill.id = :id";
        TypedQuery<BillDetails> query = session.createQuery(jqpl, BillDetails.class);
        query.setParameter("id", id );

        return  query.getResultList();
    }

    public List<BillDetails> findAll() {
        try {
            return HibernateUtil.getSessionFactory().openSession().createQuery("From BillDetails ").getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
