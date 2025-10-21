package com.fatma.royal.web.dao;

import com.fatma.royal.web.model.User;
import com.fatma.royal.web.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.query.Query;

public class UserDAO extends BaseDAO{
    public UserDAO(){
        super(User.class);
    }


    public User validateUser(String username,String password){
        User user=null;
        try(Session session= HibernateUtil.getSessionFactory().openSession()){

            Query<User> query = session.createQuery(
                    "FROM User WHERE username = :username AND password = :password", User.class
            );
            query.setParameter("username", username);
            query.setParameter("password", password);
            user=(User)query.uniqueResult();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return user;
    }
}
