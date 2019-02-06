<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ryanglazer
  Date: 2019-02-06
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>ADS</h1>
    <c:forEach var="ad" items="${ads}">
        <h2>${ad.title}</h2>
        <p>${ad.description}</p>
    </c:forEach>
</body>
</html>
