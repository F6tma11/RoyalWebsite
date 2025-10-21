package com.fatma.royal.web.controller;

import com.fatma.royal.web.dao.BuildingDAO;
import com.fatma.royal.web.dao.BuildingImagesDAO;
import com.fatma.royal.web.model.Building;
import com.fatma.royal.web.model.BuildingImages;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet("/AddBuildingServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 5, // 5MB
        maxFileSize = 1024 * 1024 * 50,     // 50MB
        maxRequestSize = 1024 * 1024 * 100  // 100MB
)

public class AddBuildingServlet extends HttpServlet {

    BuildingDAO buildingDAO=new BuildingDAO();
    BuildingImagesDAO buildingImagesDAO=new BuildingImagesDAO();
    BuildingImages images=new BuildingImages();
    Building building=new Building();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        req.setCharacterEncoding("UTF-8");
        String buildLocation = req.getParameter("location");
        String buildArea = req.getParameter("area");
        String buildPice = req.getParameter("pice");
        String buildDesc = req.getParameter("description");

        Part imagePart = req.getPart("image");
        Part pdfPart = req.getPart("pdf");
        Part lastImagePart = req.getPart("imagelast");

        String imagePath = getServletContext().getRealPath("/images/") + imagePart.getSubmittedFileName();
        String lastImagePath = getServletContext().getRealPath("/images/") + lastImagePart.getSubmittedFileName();
        String pdfPath = getServletContext().getRealPath("/pdf/") + pdfPart.getSubmittedFileName();

        imagePart.write(imagePath);
        lastImagePart.write(lastImagePath);
        pdfPart.write(pdfPath);

        building.setCity(buildLocation);
        building.setArea(Integer.parseInt(buildArea));
        building.setPice(Integer.parseInt(buildPice));
        building.setDiscription(buildDesc);
        building.setPdfPath("pdf/" + pdfPart.getSubmittedFileName());
        building.setLastMod("images/" + lastImagePart.getSubmittedFileName());

        BuildingImages images = new BuildingImages();
        images.setImage1("images/" + imagePart.getSubmittedFileName());
        images.setBuilding(building);
        buildingDAO.insertData(building);
        buildingImagesDAO.insertData(images);
        List<Building> buildings=buildingDAO.getAllData();
        session.setAttribute("buildingsAdmin",buildings);
        resp.sendRedirect("Projectmanage.jsp");
    }

}
