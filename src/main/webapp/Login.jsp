<%--
  Created by IntelliJ IDEA.
  User: fatma
  Date: 10/20/2025
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <title>تسجيل دخول الأدمن</title>
    <style>
        body {
            font-family: 'Cairo', sans-serif;
            background: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            width: 320px;
            text-align: center;
        }
        input {
            width: 90%;
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
        button {
            background-color: #c49b3f;
            border: none;
            color: white;
            padding: 10px 15px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
        }
        button:hover {
            background-color: #a07f32;
        }
    </style>
</head>
<body>
<form action="LoginServlet" method="post">
    <h2>🔒 دخول الأدمن</h2>
    <input type="text" name="username" placeholder="اسم المستخدم" required>
    <input type="password" name="password" placeholder="كلمة المرور" required>
    <button type="submit">دخول</button>
    <p style="color:red;">${error}</p>
</form>
</body>
</html>

