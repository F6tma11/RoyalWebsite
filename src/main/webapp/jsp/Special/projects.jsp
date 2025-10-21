<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <title>مشاريعنا الحالية</title>
    <style>
        body {
            font-family: "Cairo", sans-serif;
            background: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        section.projects {
            text-align: center;
            padding: 80px 0;
        }

        section.projects h2 {
            margin-bottom: 40px;
            font-size: 2.2rem;
            color: #c49b3f;
            letter-spacing: 1px;
        }

        .projects-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 25px;
            width: 90%;
            margin: 0 auto;
        }

        .project-card {
            background: #fff;
            border-radius: 20px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            text-align: right;
        }

        .project-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
        }

        .project-card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
            display: block;
        }

        .card-info {
            padding: 20px;
        }

        .card-info h3 {
            font-size: 1.3rem;
            color: #1a1a1a;
            margin-bottom: 10px;
        }

        .card-info p {
            color: #666;
            font-size: 1rem;
            line-height: 1.5;
            margin-bottom: 15px;
        }

        .view-btn {
            display: inline-block;
            background-color: #c49b3f;
            color: #fff;
            padding: 10px 18px;
            border-radius: 25px;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
        }

        .view-btn:hover {
            background-color: #a47d2f;
        }

        @media (max-width: 768px) {
            section.projects {
                padding: 50px 0;
            }
            .project-card img {
                height: 200px;
            }
        }
    </style>
</head>

<body>
<section class="projects">
    <h2>مشاريعنا الحالية</h2>
    <div class="projects-container">

        <c:forEach var="build" items="${building}">
            <div class="project-card">
                <img src="${build.images[0].image1}" alt="Building Image">
                <div class="card-info">
                    <h3>قطعة رقم ${build.pice} - المنطقة ${build.area}</h3>
                    <p>${build.discription}</p>
                    <a href="ProjectDetailsServlet?id=${build.id}" class="view-btn">عرض المزيد</a>
                </div>
            </div>
        </c:forEach>

    </div>
</section>
</body>
</html>
