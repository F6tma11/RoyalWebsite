package com.fatma.royal.web.controller;

import com.fatma.royal.web.dao.BuildingDAO;
import com.fatma.royal.web.dao.MessageDAO;
import com.fatma.royal.web.dao.UserDAO;
import com.fatma.royal.web.model.Building;
import com.fatma.royal.web.model.Message;
import com.fatma.royal.web.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    MessageDAO messageDAO=new MessageDAO();
    BuildingDAO  buildingDAO=new BuildingDAO();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username=req.getParameter("username");
        String password=req.getParameter("password");

        UserDAO userDAO=new UserDAO();
        User user=userDAO.validateUser(username,password);

        if(user!=null){
            HttpSession session =req.getSession();
            session.setAttribute("user",user);
            System.out.println(user);
            List<Message>messages=messageDAO.getAllData();
            List<Building>buildings=buildingDAO.getAllData();
            session.setAttribute("messagesAdmin",messages);
            session.setAttribute("buildingsAdmin",buildings);
            resp.sendRedirect("AdminPanale.jsp");
        }


    }
}
