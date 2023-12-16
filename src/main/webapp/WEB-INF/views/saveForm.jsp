<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 16.12.2023
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/save" method="post">
    <label for="name">Name</label>
    <input type="text" name="name" id="name">
    <label for="age">Age</label>
    <input type="number" name="age" id="age">
    <input type="submit" value="save">
</form>
</body>
</html>