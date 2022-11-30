<%--
  Created by IntelliJ IDEA.
  User: hongk
  Date: 11/30/2022
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%
    String db = "cs157a";
    String user; // assumes database name is the same as username
    user = "root";
    String pwd = "xx";
    try {


        String username = request.getParameter("username");
        String password = request.getParameter("password");

        java.sql.Connection conn;
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_proxy?autoReconnect=true&useSSL=false",user, pwd);

        PreparedStatement pst = conn.prepareStatement("Select username,password from accounts where userName=? and password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();
        if(username == "9999"){
            if(rs.next()){
                session.setAttribute("sid",username);
                response.sendRedirect("/proxy_webapp_war/loginAdmin.jsp");
            }
        }

    } catch(SQLException e) {
        out.println("SQLException caught: " + e.getMessage());
    }
%>
