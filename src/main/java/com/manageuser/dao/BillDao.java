package com.manageuser.dao;

import com.manageuser.model.*;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;

public class BillDao extends AbstractDao<Bill> {
    public BillDao(){
        super(Bill.class);
    }
    public List<Bill> findAll() {
        try {
            return HibernateUtil.getSessionFactory().openSession().createQuery("From Bill ").getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public void updateStatus(int id, int statusid) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        String jqpl = "select u from Bill u where u.id = :id";

        TypedQuery<Bill> query = session.createQuery(jqpl, Bill.class);
        query.setParameter("id", id);

        Bill bill = query.getSingleResult();
        Status status = new Status();
        status.setId(statusid);
        bill.setStatus(status);
        session.update(bill);
        tx.commit();
        session.close();
    }
    public int count()  {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select count(u) from Bill u";
        Query query = session.createQuery(jqpl);

        return  ((Long)query.getSingleResult()).intValue();
    }
    public List<Bill> findAll(int page, int pageSize)  {
        Session session = HibernateUtil.getSessionFactory().openSession();
        TypedQuery<Bill> query = session.createNamedQuery("Bill.findAll", Bill.class);
        query.setFirstResult(page * pageSize);
        query.setMaxResults(pageSize);
        return  query.getResultList();
    }
    public List<Bill> findListByName(String fullname)  {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select u from Bill u where u.fullname like :fullname";
        TypedQuery<Bill> query = session.createQuery(jqpl, Bill.class);
        query.setParameter("fullname", "%" + fullname +"%" );

        return  query.getResultList();
    }
}
