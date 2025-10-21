package com.fatma.royal.web.dao;

import com.fatma.royal.web.util.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class BaseDAO <T>{
    private Class<T> entityClass;

    public BaseDAO(Class<T> entityClass){
        this.entityClass =entityClass;
    }

    public void insertData(T entity){
        Transaction trans=null;
        try(Session session= HibernateUtil.getSessionFactory().openSession()){
            trans=session.beginTransaction();
            session.save(entity);
            trans.commit();
            System.out.println("Data Insert Successfully in"+entity.getClass().getSimpleName());
        }catch(HibernateException hiberexcep){
            hiberexcep.printStackTrace();
        }
    }

    public void updateData(T entity){
        Transaction trans=null;
        try(Session session=HibernateUtil.getSessionFactory().openSession()){
            trans=session.beginTransaction();
            session.update(entity);
            trans.commit();
        }catch(HibernateException hibernate){
            if(trans!=null){
                trans.rollback();
            }
            hibernate.printStackTrace();
        }
    }

    public void deleteData(T entity){
        Transaction trans=null;
        try(Session session=HibernateUtil.getSessionFactory().openSession()){
            trans=session.beginTransaction();
            session.delete(entity);
            trans.commit();
        }catch(HibernateException hibernateException){
            if(trans!=null){
                trans.rollback();
            }
            hibernateException.printStackTrace();
        }
    }


    public List<T> getAllData(){
        try(Session session=HibernateUtil.getSessionFactory().openSession()){
            System.out.println("in get all data");
            return session.createQuery("from "+entityClass.getSimpleName()).list();
        }
    }

    public T getDataById(int id){
        try(Session session=HibernateUtil.getSessionFactory().openSession()){
            return session.get(entityClass,id);
        }
    }

}
