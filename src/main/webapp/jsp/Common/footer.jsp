<%--
  Created by IntelliJ IDEA.
  User: fatma
  Date: 10/15/2025
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="Royal Real Estate" />
    <link rel="shortcut icon" href="../../images/logoIcon.png" />
    <link rel="stylesheet" href="../../CSS/style.css"/>
    <title>شركة رويال للمقاولات العامة والتطوير العقاري في مدينة السادات</title>

    <style>
        /* ===== Footer ===== */
        .footer {
            background-color: #111;
            color: #fff;
            padding: 3rem 2rem 1rem;
            text-align: right;
        }

        .footer-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            border-bottom: 1px solid rgba(255,255,255,0.1);
            padding-bottom: 2rem;

        }

        .footer-logo img {
            width: 180px;
            margin-bottom: 1rem;
        }

        .footer-logo p {
            color: #ccc;
            line-height: 1.8;
            font-size: 0.95rem;
        }

        .footer-links h4,
        .footer-contact h4 {
            color: #b89b5e;
            margin-bottom: 1rem;
            font-weight: 700;
        }

        .footer-links ul,
        .footer-contact ul {
            list-style: none;
            padding: 0;
        }

        .footer-links ul li,
        .footer-contact ul li {
            margin-bottom: 0.8rem;
        }

        .footer-links ul li a {
            text-decoration: none;
            color: #ccc;
            transition: color 0.3s;
        }

        .footer-links ul li a:hover {
            color: #b89b5e;
        }

        .footer-contact ul li i {
            color: #b89b5e;
            margin-left: 0.5rem;
        }

        .footer .social-icons {
            margin-top: 1rem;
            display: flex;
            gap: 1rem;
        }

        .footer .social-icons a {
            color: #b89b5e;
            font-size: 1.3rem;
            transition: color 0.3s;
        }

        .footer .social-icons a:hover {
            color: #fff;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 1rem;
            font-size: 0.9rem;
            color: #aaa;
            border-top: 1px solid rgba(255,255,255,0.1);
            margin-top: 1rem;
        }

        /* Responsive Footer */
        @media (max-width: 768px) {
            .footer-container {
                text-align: center;
            }

            .footer .social-icons {
                justify-content: center;
            }

            .footer-logo img {
                margin: 0 auto;
            }
        }

    </style>
</head>
<body>

<footer class="footer">
    <div class="footer-container">
        <div class="footer-logo">
            <img src="images/hor-logo.png" alt="Royal Logo">
            <p>شركة رويال للمقاولات العامة والتطوير العقاري<br>نسعى لتوفير سكن راقٍ وحياة مريحة لعملائنا.</p>
        </div>

        <div class="footer-links">
            <h4>روابط سريعة</h4>
            <ul>
                <li><a href="index.jsp">الرئيسية</a></li>
                <li><a href="boutus.jsp">عن الشركة</a></li>
                <li><a href="index.jsp#project-section">مشاريعنا</a></li>
                <li><a href="index.jsp#contact-section">تواصل معنا</a></li>
                <li><a href="index.jsp#service-section">خدماتنا</a></li>
                <li><a href="index.jsp#features-section">مميزاتنا</a></li>
            </ul>
        </div>

        <div class="footer-contact">
            <h4>تواصل معنا</h4>
            <ul>
                <li><i class="fa-solid fa-phone"></i> 01008973559 / 01226260388</li>
                <li><i class="fa-solid fa-envelope"></i> info@royalrealestate.com</li>
                <li><i class="fa-solid fa-location-dot"></i> مدينة السادات، المنوفية</li>
            </ul>
            <div class="social-icons">
                <a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a>
                <a href="https://wa.me/201000000000" target="_blank"><i class="fab fa-whatsapp"></i></a>
                <a href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <p>© 2025 جميع الحقوق محفوظة - شركة رويال للتطوير العقاري</p>
    </div>
</footer>


</body>
</html>
