package com.manageuser.dao;

import com.manageuser.model.Category;
import com.manageuser.model.Product;
import com.manageuser.model.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;

public class ProductDao extends AbstractDao<Product> {
    public ProductDao(){
        super(Product.class);
    }
    public List<Product> findByName(String name)  {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select u from Product u where u.name like :name";
        TypedQuery<Product> query = session.createQuery(jqpl, Product.class);
        query.setParameter("name", "%" + name +"%" );

        return  query.getResultList();
    }
    public List<Product> findByCategory(int cid) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select u from Product u where u.category.id = :cid";
        TypedQuery<Product> query = session.createQuery(jqpl, Product.class);
        query.setParameter("cid", cid );

        return  query.getResultList();
    }
    public List<Product> listAllProduct() {
        try {
            return HibernateUtil.getSessionFactory().openSession().createQuery("From Product").getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public List<Product> listNewProduct() {
        try {
            return HibernateUtil.getSessionFactory().openSession().createQuery("select u From Product u order by u.id DESC ").setMaxResults(12).list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public int count()  {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select count(u) from Product u";
        Query query = session.createQuery(jqpl);

        return  ((Long)query.getSingleResult()).intValue();
    }
    public List<Product> findAll(int page, int pageSize)  {
        Session session = HibernateUtil.getSessionFactory().openSession();
        TypedQuery<Product> query = session.createNamedQuery("Product.findAll", Product.class);
        query.setFirstResult(page * pageSize);
        query.setMaxResults(pageSize);
        return  query.getResultList();
    }
    public List<Product> findByCategory(int cid, int page, int pageSize)  {
        Session session = HibernateUtil.getSessionFactory().openSession();
        String jqpl = "select u from Product u where u.category.id = :cid";
        TypedQuery<Product> query = session.createQuery(jqpl, Product.class);
        query.setParameter("cid", cid );
        query.setFirstResult(page * pageSize);
        query.setMaxResults(pageSize);
        return  query.getResultList();
    }

    public List<Product> findListByName(String name)  {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select u from Product u where u.name like :name";
        TypedQuery<Product> query = session.createQuery(jqpl, Product.class);
        query.setParameter("name", "%" + name +"%" );

        return  query.getResultList();
    }
    public int dem(String name)  {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select count (u) from Product u where u.name like :name";
        Query query = session.createQuery(jqpl);
        query.setParameter("name", "%" + name +"%" );

        return  ((Long)query.getSingleResult()).intValue();
    }
    public int countByCategory(int cid)  {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select count (u) from Product u where u.category.id = :cid";
        Query query = session.createQuery(jqpl);
        query.setParameter("cid", cid);

        return  ((Long)query.getSingleResult()).intValue();
    }


}
