<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="utf-8" />
    <title>لوحة التحكم | شركة رويال للتطوير العقاري</title>
    <link rel="shortcut icon" href="images/logoIcon.png" />
    <style>
        body {
            font-family: "Cairo", sans-serif;
            background: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .admin-container {
            width: 90%;
            margin: 40px auto;
        }

        h1 {
            text-align: center;
            color: #c49b3f;
            margin-bottom: 30px;
            font-size: 2rem;
        }

        /* جدول عرض المشاريع */
        table {
            width: 100%;
            border-collapse: collapse;
            background: #fff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            margin-bottom: 50px;
        }

        th, td {
            text-align: center;
            padding: 12px;
            border-bottom: 1px solid #eee;
        }

        th {
            background: #c49b3f;
            color: #fff;
            font-weight: 600;
        }

        td img {
            width: 90px;
            height: 70px;
            border-radius: 8px;
            object-fit: cover;
        }

        .btn {
            border: none;
            border-radius: 6px;
            padding: 8px 12px;
            cursor: pointer;
            color: white;
            font-size: 0.9rem;
            transition: 0.3s;
        }

        .btn.delete {
            background: #e74c3c;
        }

        .btn.delete:hover {
            background: #c0392b;
        }

        .btn.edit {
            background: #f39c12;
        }

        .btn.edit:hover {
            background: #d68910;
        }

        /* فورم الإضافة */
        .add-form {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.08);
        }

        .add-form h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: 600;
            margin-bottom: 5px;
            color: #444;
        }

        input[type="text"],
        input[type="number"],
        textarea,
        select,
        input[type="file"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
        }

        textarea {
            resize: none;
            height: 100px;
        }

        .submit-btn {
            background: #c49b3f;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 8px;
            font-size: 1.1rem;
            width: 100%;
            cursor: pointer;
            transition: 0.3s;
        }

        .submit-btn:hover {
            background: #a17e2f;
        }

        @media (max-width: 768px) {
            td img {
                width: 70px;
                height: 50px;
            }
        }
    </style>
</head>
<body>

<div class="admin-container">
    <h1>لوحة التحكم | المشاريع الحالية</h1>

    <!-- جدول عرض المشاريع -->
    <table>
        <thead>
        <tr>
            <th>صورة</th>
            <th>اسم المشروع</th>
            <th>المنطقة</th>
            <th>السعر</th>
            <th>الملف التعريفي</th>
            <th>إجراء</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="build" items="${buildingsAdmin}">
            <tr>
                <td><img src="${build.images[0].image1}" alt="صورة المشروع"></td>
                <td>${build.type}</td>
                <td>${build.area}</td>
                <td>${build.price}</td>
                <td>
                    <c:if test="${not empty build.pdfPath}">
                        <a href="${build.pdfPath}" target="_blank" style="color:#c49b3f;">📄 عرض الملف</a>
                    </c:if>
                    <c:if test="${empty build.pdfPath}">
                        <span style="color:#aaa;">لا يوجد</span>
                    </c:if>
                </td>
                <td>
                    <form action="DeleteBuildingServlet" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="${build.id}">
                        <button class="btn delete" type="submit">حذف</button>
                    </form>
<%--                    <form action="editProject.jsp" method="get" style="display:inline;">--%>
<%--                        <input type="hidden" name="id" value="${build.id}">--%>
<%--                        <button class="btn edit" type="submit">تعديل</button>--%>
<%--                    </form>--%>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <!-- فورم إضافة مشروع -->
    <div class="add-form">
        <h2>إضافة مشروع جديد</h2>
        <form action="AddBuildingServlet" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label>الموقع : </label>
                <input type="text" name="location" required>
            </div>

            <div class="form-group">
                <label>المنطقة:</label>
                <input type="text" name="area" required>
            </div>

            <div class="form-group">
                <label>رقم القطعه:</label>
                <input type="number" name="pice" required>
            </div>

            <div class="form-group">
                <label>الوصف:</label>
                <textarea name="description" required></textarea>
            </div>

            <div class="form-group">
                <label>صورة المشروع:</label>
                <input type="file" name="image" accept="image/*" required>
            </div>

            <div class="form-group">
                <label>صورة نهائيه المشروع:</label>
                <input type="file" name="imagelast" accept="image/*" required>
            </div>

            <div class="form-group">
                <label>ملف PDF (اختياري):</label>
                <input type="file" name="pdf" accept="application/pdf">
            </div>

            <button type="submit" class="submit-btn">إضافة المشروع</button>
        </form>
    </div>
</div>

</body>
</html>
