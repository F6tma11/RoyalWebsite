package com.fatma.royal.web.controller;

import com.fatma.royal.web.dao.BuildingDAO;
import com.fatma.royal.web.dao.BuildingImagesDAO;
import com.fatma.royal.web.model.Building;
import com.fatma.royal.web.model.BuildingImages;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;
@WebServlet("/HomeServlet")
public class HomeServlet extends BaseServlet{
    private BuildingImagesDAO buildingImagesDAO=new BuildingImagesDAO();
    private BuildingDAO buildingDAo=new BuildingDAO();

    public HomeServlet(){
        super(BuildingImages.class);
    }

    @Override
    protected Object entityData(HttpServletRequest requet) {
        return null;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session=req.getSession();
        if(session.getAttribute("building")==null){
            List<BuildingImages> buildingImages=buildingImagesDAO.getAllData();
            req.setAttribute("buildingImages",buildingImages);

            List<Building>building=buildingDAo.getAllData();
            req.setAttribute("building",building);
            session.setAttribute("buildingImages",buildingImages);
            session.setAttribute("building",building);
        }


        req.getRequestDispatcher("/index.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
