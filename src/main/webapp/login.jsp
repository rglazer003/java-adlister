<%--
  Created by IntelliJ IDEA.
  User: ryanglazer
  Date: 2019-02-05
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (request.getMethod().equalsIgnoreCase("post")){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin")&&password.equals("password")){
            response.sendRedirect("/profile.jsp");
        }
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Test</h1>
    <form action="login.jsp" method="post">
        Username
        <br>
        <input type="text" name="username" id="username">
        <br>
        Password
        <br>
        <input type="password" name="password" id="password">
        <button type="submit">Login</button>
    </form>
</body>
</html>
