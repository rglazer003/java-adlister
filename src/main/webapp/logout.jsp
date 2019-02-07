<%--
  Created by IntelliJ IDEA.
  User: ryanglazer
  Date: 2019-02-07
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>You have been logged out</h1>
    <script>
        setTimeout(function () {
            window.location.href = "http://localhost:8080/login";
        }, 2000)
    </script>
</body>
</html>
