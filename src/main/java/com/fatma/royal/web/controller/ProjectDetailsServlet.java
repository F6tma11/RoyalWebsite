package com.fatma.royal.web.controller;

import com.fatma.royal.web.dao.BuildingDAO;
import com.fatma.royal.web.model.Building;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/ProjectDetailsServlet")
public class ProjectDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String projectId=req.getParameter("id");
        if(projectId!=null&&!projectId.isEmpty()){
            int id=Integer.parseInt(projectId);
            BuildingDAO build=new BuildingDAO();
            Building building=(Building)build.getDataById(id);

            if(building!=null){
                req.setAttribute("project",building);
                req.getRequestDispatcher("/ProjectDetails.jsp").forward(req,resp);
            }
        }
    }
}
