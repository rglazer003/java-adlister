<%--
  Created by IntelliJ IDEA.
  User: ryanglazer
  Date: 2019-02-11
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register" />
    </jsp:include></head>
<body>
    <h1>Register</h1>
    <form action="/register" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" class="form-control">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" class="form-control">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="text" id="email" name="email" class="form-control">
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</body>
</html>
