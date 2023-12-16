<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 16.12.2023
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/update/${a.id}" method="post">
    <label for="name">Name</label>
    <input type="text" name="name" id="name" value="${a.name}}">
    <label for="age">Age</label>
    <input type="number" name="age" id="age" value="${a.age}">
    <input type="submit" value="update">
</form>
</body>
</html>
