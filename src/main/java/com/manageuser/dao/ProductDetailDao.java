package com.manageuser.dao;

import com.manageuser.model.Product;
import com.manageuser.model.ProductDetail;
import org.hibernate.Session;

import javax.persistence.Query;
import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;

public class ProductDetailDao extends AbstractDao<ProductDetail> {
    public ProductDetailDao(){
        super(ProductDetail.class);
    }

    public List<ProductDetail> findByProduct(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select u from ProductDetail u where u.product.id = :id";
        TypedQuery<ProductDetail> query = session.createQuery(jqpl, ProductDetail.class);
        query.setParameter("id", id );

        return  query.getResultList();
    }
    public List<ProductDetail> findByName(String name)  {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select u from ProductDetail u where u.product.name like :name";
        TypedQuery<ProductDetail> query = session.createQuery(jqpl, ProductDetail.class);
        query.setParameter("name", "%" + name +"%" );

        return  query.getResultList();
    }
    public int count()  {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select count(u) from ProductDetail u";
        Query query = session.createQuery(jqpl);

        return  ((Long)query.getSingleResult()).intValue();
    }
    public List<ProductDetail> findAll(int page, int pageSize)  {
        Session session = HibernateUtil.getSessionFactory().openSession();
        TypedQuery<ProductDetail> query = session.createNamedQuery("ProductDetail.findAll", ProductDetail.class);
        query.setFirstResult(page * pageSize);
        query.setMaxResults(pageSize);
        return  query.getResultList();
    }

    public List<ProductDetail> findAll() {
        try {
            return HibernateUtil.getSessionFactory().openSession().createQuery("From ProductDetail ").getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
