<%--
  Created by IntelliJ IDEA.
  User: fatma
  Date: 10/19/2025
  Time: 11:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;700&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Cairo', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        /* ====== قسم المشاريع ====== */
        .projects-section {
            text-align: center;
            padding: 80px 0 60px;
            background: #fff;
        }

        .projects-section h2 {
            color: #c49b3f;
            font-size: 2.5rem;
            margin-bottom: 40px;
        }

        .projects-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 30px;
            width: 90%;
            margin: 0 auto;
        }

        .project-card {
            background: #ffffff;
            border-radius: 20px;
            box-shadow: 0 6px 25px rgba(0,0,0,0.1);
            overflow: hidden;
            transition: transform 0.4s ease, box-shadow 0.4s ease;
        }

        .project-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 25px rgba(0,0,0,0.15);
        }

        .project-card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }

        .project-info {
            padding: 20px;
            text-align: right;
        }

        .project-info h3 {
            color: #2c3e50;
            margin-bottom: 10px;
        }

        .project-info p {
            color: #555;
            font-size: 1rem;
            line-height: 1.5;
        }

        .view-btn {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #c49b3f;
            color: white;
            border-radius: 30px;
            text-decoration: none;
            transition: background 0.3s;
        }

        .view-btn:hover {
            background-color: #a47d2f;
        }

        /* ====== قسم الخدمات ====== */
        .services-section {
            background-color: #fdf7ef;
            text-align: center;
            padding: 80px 0;
            position: relative;
        }

        .services-section h2 {
            color: #c49b3f;
            font-size: 2.5rem;
            margin-bottom: 40px;
        }

        .services-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            padding: 0 30px;
        }

        .service-box {
            background: #fff;
            border-radius: 20px;
            width: 280px;
            padding: 30px 20px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            transition: all 0.4s ease;
        }

        .service-box:hover {
            transform: translateY(-8px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .service-icon {
            font-size: 3rem;
            color: #c49b3f;
            margin-bottom: 15px;
            transition: transform 0.3s ease;
        }

        .service-box:hover .service-icon {
            transform: scale(1.1) rotate(5deg);
        }

        .service-title {
            font-size: 1.3rem;
            color: #2c3e50;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .service-text {
            color: #555;
            line-height: 1.6;
        }

        /* أنيميشن ناعم */
        @keyframes fadeUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .fade-up {
            opacity: 0;
            animation: fadeUp 1s ease forwards;
        }

        .fade-up:nth-child(1) { animation-delay: 0.2s; }
        .fade-up:nth-child(2) { animation-delay: 0.4s; }
        .fade-up:nth-child(3) { animation-delay: 0.6s; }
        .fade-up:nth-child(4) { animation-delay: 0.8s; }

    </style>
</head>
<body>
<%@include file="jsp/Common/header.jsp"%>
<!-- قسم المشاريع -->
<%@include file="jsp/Special/projects.jsp"%>>

<!-- قسم الخدمات -->
<%@include file="jsp/Special/Services.jsp"%>

<%@include file="jsp/Common/footer.jsp"%>
<script>
    // تشغيل الأنيميشن عند الظهور
    const elements = document.querySelectorAll('.fade-up');
    const observer = new IntersectionObserver(entries => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = '1';
            }
        });
    }, { threshold: 0.2 });

    elements.forEach(el => observer.observe(el));
</script>

</body>
</html>
