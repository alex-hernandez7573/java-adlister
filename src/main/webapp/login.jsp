<%--
  Created by IntelliJ IDEA.
  User: alexhernandez
  Date: 7/1/21
  Time: 2:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
   if(request.getMethod().equalsIgnoreCase("post")) {
       String username = request.getParameter("username");
       String password = request.getParameter("password");
       if (username.equals("admin") && password.equals("password")) {
           response.sendRedirect("profile.jsp");
       } else {
           response.sendRedirect("login.jsp");
       }
   }
%>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%@include file="partials/navbar.jsp"%>

<h1>Hello, please log in below </h1>
<div>
    <form method ="post" action="/login.jsp">
        <label for="username">
            UserName:
        </label>
        <input type="text" name="username" id="username" placeholder="Please Enter Your Username.">
        <label for="password">
            Password:
        </label>
        <input type="password" id="password" placeholder="password" name="password">
        <button type="submit">Login</button>
    </form>
</div>
<%@include file="partials/footer.jsp"%>
</body>
</html>
