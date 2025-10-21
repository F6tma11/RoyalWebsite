<%--
  Created by IntelliJ IDEA.
  User: fatma
  Date: 10/19/2025
  Time: 1:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="Royal Real Estate" />
    <link rel="shortcut icon" href="images/logoIcon.png" />
    <link rel="stylesheet" href="CSS/style.css"/>
    <title>شركة رويال للمقاولات العامة والتطوير العقاري في مدينة السادات</title>
    <title>تفاصيل المشروع</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Cairo', sans-serif;
            background-color: #f8f9fa;
        }

        .project-header {
            position: relative;
            width: 100%;
            height: 450px;
            overflow: hidden;
            border-radius: 0 0 30px 30px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.1);
        }

        .project-header img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .floating-box {
            position: absolute;
            bottom: 20px;
            right: 30px;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 15px 20px;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
            display: flex;
            align-items: center;
            gap: 15px;
            animation: fadeIn 1.5s ease;
        }

        .floating-box img {
            width: 70px;
            height: 70px;
            border-radius: 10px;
            object-fit: cover;
        }

        .floating-box p {
            margin: 0;
            font-size: 0.9rem;
            color: #333;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .details {
            padding: 60px 10%;
        }

        .details h2 {
            color: #c49b3f;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .details .info-item {
            margin-bottom: 15px;
            font-size: 1.1rem;
            color: #555;
        }

        .details .info-item span {
            color: #1a1a1a;
            font-weight: 600;
        }

        .download-section {
            text-align: center;
            margin-top: 40px;
        }

        .download-btn {
            background-color: #c49b3f;
            color: white;
            padding: 12px 25px;
            border-radius: 25px;
            text-decoration: none;
            font-size: 1.1rem;
            transition: 0.3s;
        }

        .download-btn:hover {
            background-color: #a37f30;
        }
    </style>
</head>

<body>

<%@include file="jsp/Common/header.jsp"%>

<!-- رأس الصفحة (صورة المشروع + العائمة) -->
<div class="project-header">
    <img src="${project.images[0].image1}" alt="صورة المشروع">

    <div class="floating-box">
        <img src="${project.lastMod}" alt="آخر الأعمال">
        <div>
            <p><strong>آخر الأعمال:</strong> تشطيب الواجهة</p>
<%--            <p>📅 آخر تحديث: ${project.lastUpdate}</p>--%>
        </div>
    </div>
</div>

<!-- تفاصيل المشروع -->
<div class="details">
    <h2>تفاصيل المشروع</h2>

    <div class="info-item">📍 <span>المنطقة:</span> ${project.area}</div>
    <div class="info-item">💰 <span>قطعه رقم : </span> ${project.pice} </div>

    <hr class="my-4">

    <div class="info-item">
        <span>الوصف:</span>
        <p>${project.discription}</p>
    </div>

    <div class="download-section">
        <a href="DownloadProjectDetailsServlet?id=${project.id}" class="download-btn">
            📥 تحميل تفاصيل المشروع
        </a>
    </div>
</div>

<%@include file="jsp/Common/footer.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


</body>
</html>
