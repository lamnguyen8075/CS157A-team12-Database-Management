<%--
  Created by IntelliJ IDEA.
  User: lamnguyen
  Date: 11/21/22
  Time: 11:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  session.invalidate();
  response.sendRedirect("login.jsp");
%>
</body>
</html>
