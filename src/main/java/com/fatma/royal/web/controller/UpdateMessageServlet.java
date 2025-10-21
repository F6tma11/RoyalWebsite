package com.fatma.royal.web.controller;


import com.fatma.royal.web.dao.MessageDAO;
import com.fatma.royal.web.model.Message;
import com.fatma.royal.web.util.HibernateUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.hibernate.Session;

import java.io.IOException;
import java.util.List;

@WebServlet("/UpdateMessageServlet")
public class UpdateMessageServlet extends HttpServlet {

    MessageDAO messageDao=new MessageDAO();
    Message  message=new Message();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession httpSession = req.getSession(false);
        String id=req.getParameter("id");
        String status=req.getParameter("status");
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            Message msg = session.get(Message.class, id);
            if (msg != null&&httpSession.getAttribute("user")!=null) {
                msg.setStatus(status);
                messageDao.updateData(msg);
                System.out.println(" Message status updated successfully for ID: " + id);
                List<Message> messages=messageDao.getAllData();
                httpSession.setAttribute("messagesAdmin",messages);
            } else {
                System.out.println("Message not found for ID: " + id);
            }
            resp.sendRedirect("Messagemanager.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().println("Error updating message: " + e.getMessage());
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
