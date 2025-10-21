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

    <style>
        .hero {
            position: relative;
            width: 100%;
            height: 100vh;
            overflow: hidden;
        }

        .slide {
            object-fit: cover;
            display: block;
            position: absolute;
            width: 100%;
            height: 100%;
            background-size: cover;
            background-position: center;
            opacity: 0;
            transition: opacity 1s ease-in-out;
        }

        .slide.active {
            opacity: 1;
        }

        .hero-content {
            position: absolute;
            bottom: 50px;
            right: 50px;
            color: #fff;
            text-align: right;
        }

        .slider-controls {
            position: absolute;
            top: 50%;
            width: 100%;
            display: flex;
            justify-content: space-between;
            transform: translateY(-50%);
            padding: 0 20px;
        }

        .slider-controls span {
            cursor: pointer;
            font-size: 40px;
            color: white;
            user-select: none;
            transition: 0.3s;
        }

        .slider-controls span:hover {
            color: #ffcc00;
        }

        .hero-content {
            position: absolute;
            top: 50%;
            right: 10%;
            transform: translateY(-50%);
            color: white;
            text-align: right;
            background: rgba(0,0,0,0.4);
            padding: 2rem;
            border-radius: 15px;
        }

        .hero-content h1 {
            font-size: 3rem;
            margin-bottom: 1rem;
            color: #ffebc6;
        }

        .hero-content p {
            font-size: 1.2rem;
            max-width: 500px;
        }
    </style>

</head>
<body>
<%@include file="jsp/Common/header.jsp"%>
<!-- ===== Hero Section ===== -->
<section class="hero">
    <c:forEach var="img" items="${buildingImages}" varStatus="loop">
        <div class="slide ${loop.first?'active':''}"
             style="background-image: url('${img.image1}');"></div>
    </c:forEach>

    <div class="hero-content">
        <h1>شركة رويال للتطوير العقاري</h1>
        <p>مشاريعنا السكنية تجمع بين الفخامة، الراحة، والموقع المميز لتقديم أسلوب حياة راقي لعملائنا.</p>
    </div>

    <div class="slider-controls">
        <span class="prev">&#10094;</span>
        <span class="next">&#10095;</span>
    </div>
</section>

<%@include file="jsp/Special/projects.jsp"%>
<%@include file="jsp/Special/Features.jsp"%>
<%@include file="jsp/Special/Services.jsp"%>

<%@include file="contactus.jsp"%>
<%@include file="jsp/Common/footer.jsp"%>
<script>
    const slides = document.querySelectorAll('.slide');
    const next = document.querySelector('.next');
    const prev = document.querySelector('.prev');
    let index = 0;

    function showSlide(i) {
        slides.forEach(slide => slide.classList.remove('active'));
        slides[i].classList.add('active');
    }

    function nextSlide() {
        index = (index + 1) % slides.length;
        showSlide(index);
    }

    function prevSlide() {
        index = (index - 1 + slides.length) % slides.length;
        showSlide(index);
    }

    next.addEventListener('click', nextSlide);
    prev.addEventListener('click', prevSlide);

    // التحريك التلقائي كل 4 ثواني
    setInterval(nextSlide, 4000);

</script>

</body>
</html>
