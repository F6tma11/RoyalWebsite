package com.fatma.royal.web.controller;

import com.fatma.royal.web.dao.BuildingDAO;
import com.fatma.royal.web.dao.BuildingImagesDAO;
import com.fatma.royal.web.model.Building;
import com.fatma.royal.web.model.BuildingImages;
import com.fatma.royal.web.model.Message;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/DeleteBuildingServlet")
public class DeleteBuildingServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        int buildingId = Integer.parseInt(req.getParameter("id"));
        BuildingDAO builddao = new BuildingDAO();
        BuildingImagesDAO imagesdao = new BuildingImagesDAO();
        Building building=(Building)builddao.getDataById(buildingId);
        builddao.deleteData(building);
        List<Building>buildings=builddao.getAllData();
        List<BuildingImages>images=imagesdao.getAllData();
        session.setAttribute("buildingsAdmin",buildings);
        resp.sendRedirect("Projectmanage.jsp");
    }
}
