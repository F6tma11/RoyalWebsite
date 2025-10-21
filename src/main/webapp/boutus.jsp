<%--
  Created by IntelliJ IDEA.
  User: fatma
  Date: 10/18/2025
  Time: 3:51 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="Royal Real Estate" />
    <link rel="shortcut icon" href="images/logoIcon.png" />
    <link rel="stylesheet" href="CSS/style.css"/>
    <title>شركة رويال للمقاولات العامة والتطوير العقاري في مدينة السادات</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>عن شركة رويال</title>

    <!-- خط وأيقونات وأنيميشن -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a2e0e6cfd8.js" crossorigin="anonymous"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <style>
        body {
            font-family: "Cairo", sans-serif;
            margin: 0;
            background-color: #fafafa;
            color: #333;
            scroll-behavior: smooth;
        }

        /* ✨ الهيدر */
        .about-header {
            position: relative;
            background: linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.4)),
            url('images/companype.jpg') center/cover;
            color: white;
            text-align: center;
            padding: 120px 20px;
        }
        .about-header h1 {
            font-size: 2.5rem;
            margin-bottom: 10px;
            color: #fff;
        }
        .about-header p {
            font-size: 1.2rem;
            color: #eee;
        }

        /* 💎 قسم التعريف */
        .about-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            padding: 80px 10%;
            background: white;
        }

        .about-text {
            flex: 1 1 45%;
            text-align: right;
        }

        .about-text h2 {
            font-size: 2rem;
            color: #c49b3f;
            margin-bottom: 20px;
        }

        .about-text p {
            font-size: 1.1rem;
            line-height: 1.8;
            color: #555;
        }

        .about-image {
            flex: 1 1 45%;
            text-align: center;
        }

        .about-image img {
            max-width: 100%;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.15);
        }

        /* 🌿 قسم المميزات */
        .features {
            background: #f9f9f9;
            padding: 80px 10%;
            text-align: center;
        }

        .features h2 {
            font-size: 2rem;
            color: #c49b3f;
            margin-bottom: 40px;
        }

        .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 25px;
        }

        .feature {
            background: white;
            border-radius: 15px;
            padding: 30px 20px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }

        .feature:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .feature i {
            font-size: 40px;
            color: #c49b3f;
            margin-bottom: 15px;
        }

        .feature h3 {
            font-size: 1.2rem;
            margin-bottom: 10px;
        }

        .feature p {
            font-size: 0.95rem;
            color: #666;
        }

        /* 💫 قسم الرؤية والرسالة */
        .vision-mission {
            padding: 80px 10%;
            background: linear-gradient(to right, #fff7e6, #fff);
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            justify-content: space-between;
        }

        .vision, .mission {
            flex: 1 1 45%;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }

        .vision h3, .mission h3 {
            color: #c49b3f;
            margin-bottom: 15px;
        }

        .vision p, .mission p {
            color: #555;
            line-height: 1.8;
            font-size: 1rem;
        }

        /* 📱 للموبايل */
        @media (max-width: 768px) {
            .about-content { flex-direction: column; }
            .about-text, .about-image { flex: 1 1 100%; text-align: center; }
            .vision, .mission { flex: 1 1 100%; }
        }
    </style>
</head>
<body>
<%@include file="jsp/Common/header.jsp"%>
<!-- ✨ القسم العلوي -->
<section class="about-header" data-aos="fade-down">
    <h1>عن شركة رويال</h1>
    <p>نُقدّم أسلوب حياة متميز وسكن آمن بخبرة تمتد في مجال التطوير العقاري.</p>
</section>

<!-- 💎 التعريف بالشركة -->
<section class="about-content">
    <div class="about-text" data-aos="fade-left">
        <h2>من نحن</h2>
        <p>
            شركة <strong>رويال للتطوير العقاري</strong> تعمل على تقديم مشاريع سكنية متميزة
            في مناطق حيوية، تجمع بين التصميم العصري، الجودة العالية، والراحة.
            نحن نؤمن أن السكن ليس مجرد مكان، بل أسلوب حياة متكامل يليق بعملائنا المميزين.
        </p>
    </div>
    <div class="about-image" data-aos="fade-right">
        <img src="images/companype.jpg" alt="عن الشركة">
    </div>
</section>

<!-- 🌿 المميزات -->
<section class="features">
    <h2 data-aos="fade-up">لماذا تختار رويال؟</h2>
    <div class="feature-grid">
        <div class="feature" data-aos="zoom-in">
            <i class="fa-solid fa-building"></i>
            <h3>تصميمات فاخرة</h3>
            <p>نقدم تصميمات راقية تجمع بين الحداثة والأناقة لتلبية جميع الأذواق.</p>
        </div>
        <div class="feature" data-aos="zoom-in" data-aos-delay="100">
            <i class="fa-solid fa-hard-hat"></i>
            <h3>جودة تنفيذ عالية</h3>
            <p>نستخدم مواد بناء عالية الجودة لضمان متانة واستدامة المشاريع.</p>
        </div>
        <div class="feature" data-aos="zoom-in" data-aos-delay="200">
            <i class="fa-solid fa-tree-city"></i>
            <h3>مواقع مميزة</h3>
            <p>مشروعاتنا تقع في مناطق استراتيجية توفر الراحة والهدوء.</p>
        </div>
        <div class="feature" data-aos="zoom-in" data-aos-delay="300">
            <i class="fa-solid fa-users"></i>
            <h3>خدمة عملاء متميزة</h3>
            <p>نلتزم بتقديم تجربة استثنائية قبل وبعد الشراء لضمان رضا عملائنا.</p>
        </div>
    </div>
</section>

<!-- 💫 الرؤية والرسالة -->
<section class="vision-mission">
    <div class="vision" data-aos="fade-left">
        <h3>رؤيتنا</h3>
        <p>
            أن نكون الشركة الرائدة في تطوير المجتمعات السكنية الراقية
            التي توفر لعملائنا بيئة حياة متميزة تجمع بين الراحة والأمان.
        </p>
    </div>
    <div class="mission" data-aos="fade-right">
        <h3>رسالتنا</h3>
        <p>
            تقديم مشروعات سكنية متكاملة بخبرة هندسية عالية، تعتمد على الجودة، الدقة،
            والاهتمام بأدق التفاصيل لتلبية احتياجات وتطلعات عملائنا.
        </p>
    </div>
</section>

<%@include file="jsp/Common/footer.jsp"%>

<!-- ✨ AOS Animation -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init({
        duration: 1200,
        once: true,
    });
</script>
</body>
</html>

