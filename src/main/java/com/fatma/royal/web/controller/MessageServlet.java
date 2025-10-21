package com.fatma.royal.web.controller;

import com.fatma.royal.web.dao.MessageDAO;
import com.fatma.royal.web.model.Message;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/MessageServlet")
public class MessageServlet extends BaseServlet{

    public MessageServlet(){
        super(Message.class);
    }

    @Override
    protected Object entityData(HttpServletRequest requet) {
        return null;
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        String phone=req.getParameter("phone");
        String message=req.getParameter("message");

        Message mess=new Message();
        mess.setName(name);
        mess.setPhone(phone);
        mess.setBody(message);
        mess.setStatus("غير مقرؤه");
        MessageDAO messageDao=new MessageDAO();
        messageDao.insertData(mess);
        resp.sendRedirect("index.jsp#contact-section");
    }
}
