<%--
  Created by IntelliJ IDEA.
  User: fatma
  Date: 10/20/2025
  Time: 2:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <title>تعديل المشروع</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f5f5f5; font-family: 'Cairo', sans-serif; }
        .edit-container {
            max-width: 600px;
            margin: 60px auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.1);
        }
        h2 { text-align: center; color: #c49b3f; margin-bottom: 20px; }
        .btn-save { background-color: #c49b3f; color: white; width: 100%; }
    </style>
</head>
<body>
<div class="edit-container">
    <h2>تعديل بيانات المشروع</h2>

    <form action="UpdateBuildingServlet" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="${building.id}">

        <div class="mb-3">
            <label class="form-label">اسم المشروع</label>
            <input type="text" class="form-control" name="type" value="${building.type}" required>
        </div>

        <div class="mb-3">
            <label class="form-label">المنطقة</label>
            <input type="text" class="form-control" name="area" value="${building.area}" required>
        </div>

        <div class="mb-3">
            <label class="form-label">السعر</label>
            <input type="number" class="form-control" name="price" value="${building.price}" required>
        </div>

        <div class="mb-3">
            <label class="form-label">التصنيف</label>
            <select class="form-select" name="category" required>
                <option ${building.category == 'سكني' ? 'selected' : ''}>سكني</option>
                <option ${building.category == 'تجاري' ? 'selected' : ''}>تجاري</option>
                <option ${building.category == 'إداري' ? 'selected' : ''}>إداري</option>
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label">تغيير الصورة (اختياري)</label>
            <input type="file" name="image" class="form-control" accept="image/*">
        </div>

        <button type="submit" class="btn btn-save">💾 حفظ التعديلات</button>
    </form>
</div>
</body>
</html>
