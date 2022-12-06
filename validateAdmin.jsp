<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%
    String db = "cs157a";
    String user; // assumes database name is the same as username
    user = "root";
    String pwd = "Conheo130695";
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
        if(rs.next()){
            Integer uid = Integer.parseInt(username);
            session.setAttribute("sid",uid);
            response.sendRedirect("/proxy_webapp_war/siteAdmin.jsp");
        }
        else
            response.sendRedirect("/proxy_webapp_war/error.jsp");
    } catch(SQLException e) {
        out.println("SQLException caught: " + e.getMessage());
    }
%>