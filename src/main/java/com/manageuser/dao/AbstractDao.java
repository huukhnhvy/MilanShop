package com.manageuser.dao;

import com.manageuser.model.Category;
import com.manageuser.model.Outfit;
import com.manageuser.utils.JpaUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.CriteriaQuery;

import javax.persistence.EntityManager;
import java.util.List;

public abstract class AbstractDao<T> {
    private Class<T> entityClass;

    public AbstractDao(Class<T> cls){
        this.entityClass = cls;
    }

    public void  insert(T object){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.persist(object);
        tx.commit();
        session.close();
    }

    public void update(T object) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.update(object);
        tx.commit();
        session.close();
    }

    public void delete(T object) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.delete(object);
        tx.commit();
        session.close();
    }

    public T findOne(Object id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        T entity = session.find(entityClass, id);
        return entity;
    }
}
