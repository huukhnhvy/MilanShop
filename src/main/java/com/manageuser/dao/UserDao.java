package com.manageuser.dao;

import com.manageuser.model.Role;
import com.manageuser.model.User;
import com.manageuser.utils.JpaUtils;

import javax.persistence.*;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;

import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


public class UserDao extends AbstractDao<User> {
    public UserDao(){
        super(User.class);
    }

    public List<User> findAll(int page, int pageSize)  {
        Session session = HibernateUtil.getSessionFactory().openSession();
        TypedQuery<User> query = session.createNamedQuery("User.findAll", User.class);
        query.setFirstResult(page * pageSize);
        query.setMaxResults(pageSize);
        return  query.getResultList();
    }

    public User checkLogin(String username, String password)  {
        Session session = HibernateUtil.getSessionFactory().openSession();
        String jqpl = "select u from User u where u.username = :username and u.password = :password";

        TypedQuery<User> query = session.createQuery(jqpl, User.class);
        query.setParameter("username", username);
        query.setParameter("password", password);
        try {
            return  query.getSingleResult();
        }catch (NoResultException nre){
            return null;
        }

    }
    public Boolean checkUsername(String username)  {
        Session session = HibernateUtil.getSessionFactory().openSession();
        String jqpl = "select u from User u where u.username = :username";

        TypedQuery<User> query = session.createQuery(jqpl, User.class);
        query.setParameter("username", username);
        try {
            return  true;
        }catch (NoResultException nre){
            return false;
        }
    }
    public Boolean checkEmail(String email)  {
        Session session = HibernateUtil.getSessionFactory().openSession();
        String jqpl = "select u from User u where u.email = :email";

        TypedQuery<User> query = session.createQuery(jqpl, User.class);
        query.setParameter("email", email);
        try {
            return  true;
        }catch (NoResultException nre){
            return false;
        }
    }
    public void changePassword(String username, String oldPassword, String newPassword) throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        String jqpl = "select u from User u where u.username = :username and u.password = :password";
        TypedQuery<User> query = session.createQuery(jqpl, User.class);
        try{
            query.setParameter("username", username);
            query.setParameter("password", oldPassword);
            User user = query.getSingleResult();
            if(user == null){
                throw new Exception("Current password or username are incorrecrt");
            }
            user.setPassword(newPassword);
            session.update(user);
            tx.commit();
        }catch (Exception e){
            tx.rollback();
            throw e;
        }finally {
            session.close();
        }
    }

    public List<User> findListByUsername(String username)  {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select u from User u where u.username like :fullname";
        TypedQuery<User> query = session.createQuery(jqpl, User.class);
        query.setParameter("fullname", "%" + username +"%" );

        return  query.getResultList();
    }
    public User findByUsername(String username)  {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select u from User u where u.username = :username";
        TypedQuery<User> query = session.createQuery(jqpl, User.class);
        query.setParameter("username", username);
        return  query.getSingleResult();
    }
    public int dem(String username)  {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select count (u) from User u where u.username like :username";
        Query query = session.createQuery(jqpl);
        query.setParameter("username", "%" + username +"%" );

        return  ((Long)query.getSingleResult()).intValue();
    }

    public int count()  {
        Session session = HibernateUtil.getSessionFactory().openSession();

        String jqpl = "select count(u) from User u";
        Query query = session.createQuery(jqpl);

        return  ((Long)query.getSingleResult()).intValue();
    }

    public List<User> findAll() {
        try {
            return HibernateUtil.getSessionFactory().openSession().createQuery("From User").getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
