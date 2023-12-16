<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 16.12.2023
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="2px">
    <th>ID</th>
    <th>NAME</th>
    <th>AGE</th>
    <th>UPDATE</th>
    <th>DELETE</th>
    <c:forEach var="a" items="${find}">
        <tr>
            <td>${a.id}</td>
            <td>
                <a href="/find/by/${a.id}">
                        ${a.name}
                </a>
            </td>
            <td>${a.age}</td>
            <td>
                <a href="/update/form/${a.id}">
                    UPDATE
                </a>
            </td>
            <td>
                <a href="/delete/${a.id}">
                    DELETE
                </a>
            </td>

        </tr>
    </c:forEach>
</table>
<button>
    <a href="/save/form">
        Save
    </a>
</button>
</body>
</html>