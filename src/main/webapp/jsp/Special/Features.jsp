<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <title>مميزات رويال</title>

    <!-- AOS Animation -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init({
            duration: 1000,
            once: true,
        });
    </script>

    <!-- 🎨 CSS -->
    <style>
        body {
            font-family: "Cairo", sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .features-section {
            padding: 80px 0;
            text-align: center;
            background: #fff;
        }

        .section-title {
            font-size: 2rem;
            margin-bottom: 50px;
            color: #222;
            font-weight: 700;
        }

        .section-title span {
            color: #c49b3f;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(3, minmax(280px, 1fr));
            justify-content: center;
            align-items: start;
            gap: 25px;
            width: 70%;
            margin: 0 auto;
        }

        .feature-card {
            width: 100%;
            background: #fff;
            border-radius: 18px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.08);
            overflow: hidden;
            transition: all 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.12);
        }

        .feature-card img {
            width: 100%;
            height: 270px;
            object-fit: cover;
        }

        .feature-content {
            padding: 16px;
        }



        .feature-content h3 {
            color: #c49b3f;
            font-size: 1.3rem;
            margin-bottom: 10px;
        }

        .feature-content p {
            color: #555;
            font-size: 1rem;
            line-height: 1.6;
        }

        @media (max-width: 992px) {
            .features-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 600px) {
            .features-grid {
                grid-template-columns: 1fr;
            }}
    </style>
</head>
<body>

<section id="features-section" class="features-section">
    <h2 class="section-title" data-aos="fade-up">المميزات التي توفرها <span>رويال</span></h2>

    <div class="features-grid">
        <div class="feature-card" data-aos="fade-up" data-aos-delay="100">
            <img src="images/roof.jpg" alt="عزل حراري ورطوبة">
            <div class="feature-content">
                <h3>عزل حراري ورطوبة للأسطح</h3>
                <p>نستخدم أحدث مواد العزل لتوفير راحة حرارية وحماية من الرطوبة داخل المباني.</p>
            </div>
        </div>

        <div class="feature-card" data-aos="fade-up" data-aos-delay="200">
            <img src="images/OutsideWalls.jpg" alt="عزل الجدران">
            <div class="feature-content">
                <h3>عزل حراري وصوتي للجدران الخارجية</h3>
                <p>نضمن بيئة مريحة وهادئة بفضل تقنيات العزل المتقدمة للجدران الخارجية.</p>
            </div>
        </div>

        <div class="feature-card" data-aos="fade-up" data-aos-delay="300">
            <img src="images/mod.jpg" alt="مدخل فندقي">
            <div class="feature-content">
                <h3>مداخل فندقية راقية</h3>
                <p>تصاميم أنيقة وفخمة تعكس هوية رويال في كل تفصيلة من المداخل.</p>
            </div>
        </div>

        <div class="feature-card" data-aos="fade-up" data-aos-delay="400">
            <img src="images/8146.jpg" alt="أسانسير حديث">
            <div class="feature-content">
                <h3>أسانسيرات حديثة وآمنة</h3>
                <p>نوفر مصاعد حديثة بمعايير أمان عالية لتجربة راحة وسلامة مميزة.</p>
            </div>
        </div>

        <div class="feature-card" data-aos="fade-up" data-aos-delay="500">
            <img src="images/material.jpg" alt="التزام بالمواعيد">
            <div class="feature-content">
                <h3>التزام تام بالمواعيد</h3>
                <p>نلتزم بتسليم المشاريع في الوقت المحدد دون التأثير على جودة التنفيذ.</p>
            </div>
        </div>

        <div class="feature-card" data-aos="fade-up" data-aos-delay="600">
            <img src="images/mat.jpg" alt="خامات عالية الجودة">
            <div class="feature-content">
                <h3>أفضل الخامات والتصميمات العصرية</h3>
                <p>نستخدم أجود المواد مع تصاميم عصرية تواكب احتياجات السكن الحديث.</p>
            </div>
        </div>
    </div>
</section>



<script>
    AOS.init({
        duration: 1000,
        once: true,
    });
</script>
</body>
</html>
