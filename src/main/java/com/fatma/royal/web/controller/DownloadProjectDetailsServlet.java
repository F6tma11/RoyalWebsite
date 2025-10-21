package com.fatma.royal.web.controller;

import com.fatma.royal.web.dao.BuildingDAO;
import com.fatma.royal.web.model.Building;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

@WebServlet("/DownloadProjectDetailsServlet")
public class DownloadProjectDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id=Integer.parseInt(req.getParameter("id"));
        BuildingDAO buildDao=new BuildingDAO();
        Building building=(Building) buildDao.getDataById(id);
        if(building.getPdfPath()==null){
            resp.getWriter().println("ا يوجد ملف متح لهذا المشروع حاليا");
            return;
        }
       String filePdf=getServletContext().getRealPath("/"+building.getPdfPath());
        File file=new File(filePdf);
        if(!file.exists()){
            resp.getWriter().println("هذا الملف غير متاح على السيرفر");
            return;
        }

        resp.setContentType("application/pdf");
        resp.setHeader("Content-Disposition","attachment; filename="+building.getPdfPath());

        try(FileInputStream fis=new FileInputStream(file);
            OutputStream os=resp.getOutputStream();){
            byte[] buffer=new byte[1024];
            int len;
            while((len=fis.read(buffer))!=-1){
                os.write(buffer,0,len);
            }
        }
    }
}
