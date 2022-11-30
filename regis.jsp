<%--
  Created by IntelliJ IDEA.
  User: hongk
  Date: 11/30/2022
  Time: 11:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%
    String db = "cs157a";
    String user; // assumes database name is the same as username
    user = "root";
    String pwd = "xx";
    try {
        String uname = request.getParameter("username");
        String pass = request.getParameter("password");

        String fname = request.getParameter("firstName");
        String lname = request.getParameter("lastName");
        String addrLine1 = request.getParameter("addressLine1");
        String addrLine2 = request.getParameter("addressLine2");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String postal = request.getParameter("postal");
        String email = request.getParameter("email");
        String position = request.getParameter("position");

        java.sql.Connection conn;
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_proxy?autoReconnect=true&useSSL=false",user, pwd);
        Statement st=conn.createStatement();

        PreparedStatement pst = conn.prepareStatement("Select userName from accounts where userName=?");
        pst.setString(1, uname);
        ResultSet rs = pst.executeQuery();

        if(rs.next()){
            out.println("<h1>" + "USERNAME IS ALREADY EXIST!" + "<h1>");
            response.sendRedirect("/proxy_webapp_war/register.jsp");
        }
        else{
            int insertAccounts = st.executeUpdate("INSERT INTO accounts (userName, password) VALUES ('"+uname+"','"+pass+"')");
            int insertEmployees = st.executeUpdate("INSERT INTO employees (employeeID, firstName, lastName, addressLine1, addressLine2, city, state, postalCode, email, position) VALUES ('"+uname+"','"+fname+"','"+lname+"','"+addrLine1+"','"+addrLine2+"','"+city+"','"+state+"','"+postal+"','"+email+"','"+position+"')");
            response.sendRedirect("/proxy_webapp_war/index.jsp");
        }


    } catch(SQLException e) {
        out.println("SQLException caught: " + e.getMessage());
    }
%>

<script>
    function myFunction() {
        alert("I am an alert box!");
    }
</script>
