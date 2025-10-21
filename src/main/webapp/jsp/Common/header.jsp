<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="Royal Real Estate" />
    <link rel="shortcut icon" href="images/logoIcon.png" />
    <link rel="stylesheet" href="../../CSS/style.css"/>
    <title>شركة رويال للمقاولات العامة والتطوير العقاري في مدينة السادات</title>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;800&display=swap');
        @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Cairo', sans-serif;
        }

        body {
            background-color: #fafafa;
            color: #333;
        }

        /* ====== Header ====== */
        header {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(255, 255, 255, 0.95);
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            z-index: 100;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0rem 2rem;
            flex-wrap: wrap;
        }

        /* اللوجو */
        .logo img {
            width: 180px;
            height: auto;
        }

        /* القايمة */
        .nav-links {
            display: flex;
            list-style: none;
            gap: 1.5rem;
        }

        .nav-links li a {
            text-decoration: none;
            color: #333;
            font-weight: 600;
            transition: 0.3s;
        }

        .nav-links li a:hover {
            color: #b89b5e;
        }

        /* ====== Social icons + numbers ====== */
        .social-icons {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .social-icons a {
            color: #b89b5e;
            font-size: 1.3rem;
            transition: 0.3s;
            text-decoration: none;
        }

        .social-icons a:hover {
            color: #333;
        }

        .phone-numbers {
            font-weight: 600;
            color: #333;
            font-size: 0.95rem;
            white-space: nowrap;
        }

        @media (max-width: 992px) {
            nav {
                flex-direction: column;
                align-items: center;
                gap: 0.5rem;
                padding: 1rem;
            }

            .nav-links {
                flex-wrap: wrap;
                justify-content: center;
                gap: 1rem;
            }

            .social-icons {
                justify-content: center;
                margin-top: 0.5rem;
                flex-wrap: wrap;
            }

            .logo img {
                width: 140px;   /* 👈 في التابلت يكون أصغر شوية */
            }

            .phone-numbers {
                font-size: 0.85rem;
            }
        }
        /* أيقونة المينيو */
        .menu-icon {
            display: none;
            font-size: 28px;
            cursor: pointer;
            color: #333;
        }

        /* في الموبايل */
        @media (max-width: 768px) {
            .menu-icon {
                display: block; /* تظهر الأيقونة فقط في الموبايل */
            }

            .nav-links {
                display: none; /* نخفي القائمة افتراضيًا */
                flex-direction: column;
                background-color: #fff;
                position: absolute;
                top: 70px; /* حسب ارتفاع الهيدر */
                right: 0;
                width: 100%;
                padding: 1rem 0;
                text-align: center;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                z-index: 999;
            }

            .nav-links.show {
                display: flex; /* تظهر لما نضغط على الأيقونة */
            }
        }
    </style>
</head>
<body>

<header>
    <nav class="navbar">
        <div class="menu-icon" onclick="toggleMenu()">
            ☰
        </div>
        <ul class="nav-links">
            <li><a href="index.jsp">الرئيسية</a></li>
            <li><a href="boutus.jsp">عن الشركة</a></li>
            <li><a href="index.jsp#project-section">مشاريعنا</a></li>
            <li><a href="index.jsp#contact-section">تواصل معنا</a></li>
            <li><a href="index.jsp#service-section">خدماتنا</a></li>
            <li><a href="index.jsp#features-section">مميزاتنا</a></li>
        </ul>

        <div class="logo">
            <img src="images/logohor.png" alt="Royal Logo">
        </div>

        <div class="social-icons">
            <a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a>
            <a href="https://wa.me/201000000000" target="_blank"><i class="fab fa-whatsapp"></i></a>
            <a href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a>
            <span class="phone-numbers">01008973559 / 01226260388</span>
        </div>
    </nav>
</header>


<script>
    function toggleMenu() {
        const navLinks = document.querySelector('.nav-links');
        navLinks.classList.toggle('show');
    }
</script>

</body>
</html>
