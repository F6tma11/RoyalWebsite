<%--
  Created by IntelliJ IDEA.
  User: fatma
  Date: 10/18/2025
  Time: 3:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>تواصل معنا | شركة رويال</title>

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
        .contact-header {
            position: relative;
            background: linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.4)),
            url('https://images.unsplash.com/photo-1599427303058-f04cbcf4756f?auto=format&fit=crop&w=1400&q=80') center/cover;
            color: white;
            text-align: center;
            padding: 120px 20px;
        }
        .contact-header h1 {
            font-size: 2.5rem;
            margin-bottom: 10px;
            color: #fff;
        }
        .contact-header p {
            font-size: 1.2rem;
            color: #eee;
        }

        /* 💌 الفورم */
        .contact-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: flex-start;
            padding: 80px 10%;
            gap: 40px;
        }

        .contact-info {
            flex: 1 1 40%;
        }

        .contact-info h2 {
            color: #c49b3f;
            font-size: 1.8rem;
            margin-bottom: 20px;
        }

        .info-item {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            background: white;
            padding: 15px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }

        .info-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.15);
        }

        .info-item i {
            font-size: 22px;
            color: #c49b3f;
            margin-left: 15px;
        }

        .info-item p {
            margin: 0;
            font-size: 1rem;
            color: #444;
        }

        /* 📋 نموذج التواصل */
        .contact-form {
            flex: 1 1 55%;
            background: white;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.1);
            padding: 40px;
        }

        .contact-form h2 {
            text-align: center;
            color: #c49b3f;
            margin-bottom: 30px;
            font-size: 1.8rem;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            color: #555;
            font-weight: 600;
            margin-bottom: 8px;
            font-size: 0.95rem;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-family: "Cairo", sans-serif;
            font-size: 1rem;
            transition: all 0.3s ease;
            outline: none;
        }

        .form-group input:focus,
        .form-group textarea:focus {
            border-color: #c49b3f;
            box-shadow: 0 0 5px rgba(196, 155, 63, 0.3);
        }

        .form-group textarea {
            height: 120px;
            resize: none;
        }

        .submit-btn {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #c49b3f;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #a47d2f;
        }

        /* 🗺️ الخريطة */
        .map {
            margin: 60px auto;
            width: 90%;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        iframe {
            width: 100%;
            height: 400px;
            border: none;
        }

        /* 📱 للموبايل */
        @media (max-width: 768px) {
            .contact-container { flex-direction: column; padding: 50px 5%; }
            .contact-form { padding: 30px; }
        }
    </style>
</head>

<body>


<!-- 💌 المحتوى -->
<section id="contact-section" class="contact-container">

    <div class="contact-info" data-aos="fade-left">
        <h2>معلومات التواصل</h2>

        <div class="info-item">
            <i class="fa-solid fa-phone"></i>
            <p>0100 897 3559 / 0122 626 0388</p>
        </div>
        <div class="info-item">
            <i class="fa-solid fa-envelope"></i>
            <p>info@royaldevelopment.com</p>
        </div>
        <div class="info-item">
            <i class="fa-solid fa-location-dot"></i>
            <p>المنوفيه - مدينة السادات - مول الزهور</p>
        </div>

        <div class="info-item">
            <i class="fa-brands fa-facebook"></i>
            <p>facebook.com/RoyalDevelopments</p>
        </div>
    </div>

    <!-- 📨 الفورم -->
    <form class="contact-form" data-aos="fade-right" action="MessageServlet" method="post">
        <h2>أرسل رسالة</h2>

        <div class="form-group">
            <label for="name">الاسم الكامل</label>
            <input type="text" id="name" name="name" placeholder="اكتب اسمك هنا" required>
        </div>

        <div class="form-group">
            <label for="phone">البريد الإلكتروني</label>
            <input type="tel" id="email" name="phone" placeholder="+02010254455" required>
        </div>

        <div class="form-group">
            <label for="message">الرسالة</label>
            <textarea id="message" name="message" placeholder="اكتب رسالتك هنا..." required></textarea>
        </div>

        <button type="submit" class="submit-btn">إرسال</button>
    </form>

</section>

<!-- 🗺️ الخريطة -->
<div class="map" data-aos="zoom-in">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3456.1967126623914!2d31.420433975503918!3d29.962805122027083!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145851bc3123e2e1%3A0x6e82a2148c77f1f8!2z2YXYrNmF2Lkg2KfZhNmF2K3Yp9mGINmE2YTYo9io2YrZhNmK2Kk!5e0!3m2!1sar!2seg!4v1707348169513!5m2!1sar!2seg" allowfullscreen="" loading="lazy"></iframe>
</div>

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

