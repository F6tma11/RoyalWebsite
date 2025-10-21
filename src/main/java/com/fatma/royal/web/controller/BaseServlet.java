package com.fatma.royal.web.controller;

import com.fatma.royal.web.dao.BaseDAO;
import com.fatma.royal.web.util.HibernateUtil;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;

import java.io.IOException;

import java.util.List;

public abstract class BaseServlet<T> extends HttpServlet {

    protected BaseDAO<T> dao;
    private Class<T> entityClass;

    public BaseServlet(Class<T> entityClass){
        this.entityClass=entityClass;
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        try{
            HibernateUtil.buildSessionFactory();
            dao=new BaseDAO<>(entityClass);
            System.out.println("Servlet Initialized Successfully For "+entityClass.getSimpleName());
        }catch(HibernateException ex){
            System.out.println("Servlet Initialization Failed For "+entityClass.getSimpleName());
            ex.printStackTrace();
        }
    }

    protected void listEntities(HttpServletRequest request,HttpServletResponse response,String attributeName,String path)throws ServletException,IOException{
        List<T> list=dao.getAllData();
        request.setAttribute(attributeName,list);
        request.getRequestDispatcher(path).forward(request,response);
    }

    protected abstract T entityData(HttpServletRequest requet);

    protected void insertData(HttpServletRequest request , HttpServletResponse response,String redirectPath)throws ServletException, IOException {
        T entity=entityData(request);
        dao.insertData(entity);
        response.sendRedirect(request.getContextPath()+"/"+redirectPath);
    }

    protected void updateData(HttpServletRequest request,HttpServletResponse response,String redirectPath)throws ServletException,IOException{
        T entity=entityData(request);
        dao.updateData(entity);
        response.sendRedirect(request.getContextPath()+"/"+redirectPath);
    }

    protected void deleteData(HttpServletRequest request,HttpServletResponse response,String redirectPath)throws ServletException, IOException{
        T entity=entityData(request);
        dao.deleteData(entity);
        response.sendRedirect(request.getContextPath()+"/"+redirectPath);
    }

    protected void showForm(HttpServletRequest request, HttpServletResponse response, String jspPath)
            throws ServletException, IOException {
        request.getRequestDispatcher(jspPath).forward(request, response);
    }
}
