<%--
  Created by IntelliJ IDEA.
  User: ryanglazer
  Date: 2019-02-05
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

%>

<html>
<head>
    <title>Title</title>
    <%@ include file="../WEB-INF/partials/head.jsp" %>
    <link rel="stylesheet" href="../CSS/stylesheet.css">
</head>
<body>
    <h1>CSS Test</h1>
    <form action="/login" method="post">
        Username
        <br>
        <input type="text" name="username" id="username">
        <br>
        Password
        <br>
        <input type="password" name="password" id="password">
        <button type="submit">Login</button>
    </form>
    <%@include file="../WEB-INF/partials/footer.jsp"%>
</body>
</html>
