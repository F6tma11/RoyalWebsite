<%--
  Created by IntelliJ IDEA.
  User: fatma
  Date: 10/19/2025
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <style>
        .services-section {

            text-align: center;
            padding: 80px 0;
            font-family: "Cairo", sans-serif;
        }

        .services-section h2 {
            color: #c49b3f;
            font-size: 2.4rem;
            margin-bottom: 50px;
            position: relative;
        }

        .services-section h2::after {
            content: "";
            width: 60px;
            height: 3px;
            background-color: #c49b3f;
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            border-radius: 2px;
        }

        .services-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            padding: 0 40px;
        }

        .service-card {
            background: #fff;
            border-radius: 20px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            overflow: hidden;
            width: 330px;
            transition: transform 0.4s ease, box-shadow 0.4s ease;
            text-align: right;
        }

        .service-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .image-wrapper {
            width: 100%;
            height: 220px;
            overflow: hidden;
        }

        .image-wrapper img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s ease;
        }

        .service-card:hover img {
            transform: scale(1.05);
        }

        .service-info {
            padding: 20px;
        }

        .service-info h3 {
            color: #2c3e50;
            font-size: 1.4rem;
            margin-bottom: 10px;
        }

        .service-info p {
            color: #555;
            line-height: 1.7;
            font-size: 1rem;
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

        @media (max-width: 900px) {
            .service-card { width: 90%; }
        }
    </style>
</head>
<body>
<!-- قسم الخدمات -->
<section  id="service-section" class="services-section">
    <h2>خدماتنا</h2>
    <div class="services-container">

        <!-- تطوير -->
        <div class="service-card fade-up">
            <div class="image-wrapper">
                <img src="images/25dis.jpeg" alt="تطوير المشاريع">
            </div>
            <div class="service-info">
                <h3>تطوير المشاريع</h3>
                <p>
                    نقدم خدمات تطوير متكاملة تبدأ من دراسة الأرض وحتى تسليم المشروع بأعلى معايير الجودة والتصميم.
                </p>
            </div>
        </div>

        <!-- التشطيبات الداخلية -->
        <div class="service-card fade-up">
            <div class="image-wrapper">
                <img src="images/3D.png" alt="تشطيبات داخلية">
            </div>
            <div class="service-info">
                <h3>تشطيبات داخلية</h3>
                <p>
                    تنفيذ تشطيبات فاخرة بأدق التفاصيل باستخدام خامات عالية الجودة تمنح المساحات لمسة من الفخامة والراحة.
                </p>
            </div>
        </div>

        <!-- الإشراف الهندسي -->
        <div class="service-card fade-up">
            <div class="image-wrapper">
                <img src="images/Enginering.png" alt="الإشراف الهندسي">
            </div>
            <div class="service-info">
                <h3>الإشراف الهندسي</h3>
                <p>
                    إشراف هندسي دقيق على جميع مراحل البناء لضمان الجودة وسلامة التنفيذ بأعلى المعايير.
                </p>
            </div>
        </div>

    </div>
</section>



</body>
</html>
