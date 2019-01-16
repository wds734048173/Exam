<%--
  Created by IntelliJ IDEA.
  User: WDS
  Date: 2019/1/12
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
</head>
<body>
<form action="/login.do" method="post">
    <input type="text" name="username" required placeholder="请输入用户名">
    <input type="password" placeholder="请输入密码" required name="password">
    <span style="color: red">${msg}</span>
    <input type="submit" value="登陆">
</form>
</body>
</html>
