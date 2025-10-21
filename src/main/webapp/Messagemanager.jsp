<%--
  Created by IntelliJ IDEA.
  User: fatma
  Date: 10/19/2025
  Time: 12:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="Royal Real Estate" />
    <link rel="shortcut icon" href="images/logoIcon.png" />
    <link rel="stylesheet" href="CSS/style.css"/>
    <title>شركة رويال للمقاولات العامة والتطوير العقاري في مدينة السادات</title>
    <title>إدارة الرسائل</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Cairo', sans-serif;
        }

        .card {
            border-radius: 15px;
            transition: 0.3s;
        }

        .card:hover {
            transform: scale(1.02);
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        }

        .status-badge {
            font-size: 0.85rem;
            padding: 4px 10px;
            border-radius: 10px;
        }

        .status-pending { background-color: #ffc107; color: #fff; }
        .status-replied { background-color: #28a745; color: #fff; }
        .status-unread { background-color: #dc3545; color: #fff; }
    </style>
</head>
<body>

<div class="container py-5">
    <h2 class="text-center mb-4">📩 إدارة رسائل العملاء</h2>

    <!-- Filter Section -->
    <div class="d-flex justify-content-between mb-3">
        <form class="d-flex gap-2" method="get" action="MessageManageServlet">
            <select name="status" class="form-select" style="width: 200px;">
                <option value="">كل الحالات</option>
                <option value="unread">غير مقروءة</option>
                <option value="replied">تم الرد</option>
                <option value="pending">قيد المراجعة</option>
            </select>
            <button class="btn btn-primary">تصفية</button>
        </form>
    </div>

    <!-- Message Table -->
    <div class="table-responsive">
        <table class="table table-hover align-middle text-center bg-white rounded shadow-sm">
            <thead class="table-light">
            <tr>
                <th>#</th>
                <th>اسم المرسل</th>
                <th>الرساله</th>
                <th>رقم الهاتف</th>
                <th>الحالة</th>
                <th>إجراءات</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="msg" items="${messagesAdmin}">
                <tr>
                    <td>${msg.id}</td>
                    <td>${msg.name}</td>
                    <td>${msg.body}</td>
                    <td>${msg.phone}</td>
                    <td>
                            <span class="status-badge
                                ${msg.status == 'unread' ? 'status-unread' :
                                (msg.status == 'replied' ? 'status-replied' : 'status-pending')}">
                                <c:choose>
                                    <c:when test="${msg.status == 'unread'}">غير مقروءة</c:when>
                                    <c:when test="${msg.status == 'replied'}">تم الرد</c:when>
                                    <c:otherwise>قيد المراجعة</c:otherwise>
                                </c:choose>
                            </span>
                    </td>
                    <td>
                        <form action="UpdateMessageServlet" method="post" class="d-inline">
                            <input type="hidden" name="id" value="${msg.id}">
                            <select name="status" class="form-select form-select-sm d-inline" style="width: 140px;">
                                <option  value="unread">غير مقروءة</option>
                                <option  value="replied">تم الرد</option>
                                <option  value="pending">قيد المراجعة</option>
                            </select>
                            <button class="btn btn-sm btn-success mt-1">تحديث</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


</body>
</html>
