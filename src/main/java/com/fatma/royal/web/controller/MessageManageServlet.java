package com.fatma.royal.web.controller;
import com.fatma.royal.web.dao.MessageDAO;
import com.fatma.royal.web.model.Message;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/MessageManageServlet")
public class MessageManageServlet extends HttpServlet {

    MessageDAO messageDAO = new MessageDAO();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession httpSession=req.getSession(false);
        String filterStatus=req.getParameter("status");
        List<Message>filterMessage=new ArrayList<>();
        if(filterStatus!=null&&httpSession.getAttribute("user")!=null){
            List<Message>messages=messageDAO.getAllData();
            if(filterStatus!=null){
                for(Message msg:messages){
                    if(msg.getStatus().equals(filterStatus)){
                        filterMessage.add(msg);
                    }
                }
            }else{
                filterMessage.addAll(messages);
            }

            httpSession.setAttribute("messagesAdmin",filterMessage);
            resp.sendRedirect("Messagemanager.jsp");
        }

    }
}
