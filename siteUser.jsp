<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: hongvu
  Date: 11/25/22
  Time: 5:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<title>My Proxy</title>
<style>

    * {
        box-sizing: border-box;
    }
    body {
        margin: 0;
    }
    #main {
        display: flex;
        min-height: calc(120vh - 40vh);
    }
    #main > article {
        flex: 1;
    }
    #main > nav,
    #main > aside {
        flex: 0 0 20vw;
        background: beige;
    }
    #main > nav {
        order: -1;
    }
    header, footer, article, nav, aside {
        padding: 1em;

    }
    header {
        background: yellowgreen;
        height: 10vh;
    }
    footer {
        background: yellowgreen;
        height: 10vh;
        font-style:normal;
        font-size: 15px
    }
    input[type=text], input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    button {
        background-color: #04AA6D;
        color: white;
        padding: 14px 17px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }

    button:hover {
        opacity: 0.8;
    }

    .container {
        padding: 16px;
    }
    span.psw {
        float: right;
        padding-top: 16px;
    }
    .button {
        border: none;
        color: white;
        padding: 16px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        transition-duration: 0.4s;
        cursor: pointer;
    }

    .button1 {
        background-color: white;
        color: black;
        border: 2px solid #4CAF50;
    }

    .button1:hover {
        background-color: #4CAF50;
        color: white;
    }
</style>
<body>
<header>
    <h1 style="text-align: center;font-size:200%;">MY PROXY</h1></header><div id="main">
    <article>
        <h1 style="text-align: center;">PROFILE :: USER</h1>
        <%
            String uid = (String)session.getAttribute("sid");
            String db = "cs157a";
            String user; // assumes database name is the same as username
            user = "root";
            String password = "xx";
            try {
                java.sql.Connection con;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_proxy?autoReconnect=true&useSSL=false",user, password);
                Statement stmt = con.createStatement();

                PreparedStatement pst = con.prepareStatement("SELECT * FROM accounts where userName = ?");
                pst.setString(1, uid);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
        %>
        <%  out.println("<form action=\" \" method=\"\">");%>

        <%  out.println("<label for=\"username\"><b>Username</b></label>");%>
        <%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getString(1)+ "\" readonly>");%>

        <%  out.println("<label for=\"username\"><b>Password</b></label>");%>
        <%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getInt(2)+ "\" readonly>");%>

        <%  out.println("<label for=\"username\"><b>Email</b></label>");%>
        <%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getString(3)+ "\" readonly>");%>

        <%  out.println("<label for=\"username\"><b>Role</b></label>");%>
        <%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getDate(4)+ "\" readonly>");%>

        <%  out.println("<label for=\"username\"><b>Department</b></label>");%>
        <%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getString(3)+ "\" readonly>");%>

        <%  out.println("<label for=\"username\"><b>Company</b></label>");%>
        <%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getDate(4)+ "\" readonly>");%>
        <%  out.println("</form>");%>
        <%
                }
                rs.close();
                stmt.close();
                con.close();
            } catch(SQLException e) {
                out.println("SQLException caught: " + e.getMessage());
            }
        %>



        <form action="/login.jsp">
            <table style="width:100%">
                <tr>
                    <td style="width:10%"><input class="button button1" type="submit" value="TEST CONNECTION"></td>
                    <td><input style="width:400px;padding: 19px 33px;margin: 4px 2px;" type="text" id="url" name="url" value="url"></td>
                </tr>
            </table>
        </form>
        <table style="width:25%">

            <tr>
                <th colspan="3"><h3>REQUEST HISTORY</h3></th>
            </tr>
            <tr>
                <th>URL</th>
                <th></th>
                <th></th>
            </tr>
            <tr>
                <td>https://www.w3schools.com/</td>
                <th style="width:15px;"></th>
                <th style="width:15px;">Approved</th>
            </tr>
            <tr>
                <td>https://www.w3schools.com/</td>
                <th style="width:15px;"></th>
                <th style="width:15px;">Restricted</th>
            </tr>
        </table>
    </article>
    <nav>
    </nav>
</div>
<footer>
    <a href="http://localhost:8080/proxy_webapp_war/profile.jsp">PROFILE</a>
    <a href="http://localhost:8080/proxy_webapp_war/login.jsp">LOGIN</a>
    <a href="http://localhost:8080/proxy_webapp_war/logout.jsp">LOGOUT</a>
    <a href="http://localhost:8080/proxy_webapp_war/register.jsp">REGISTER</a>
    <a href="http://localhost:8080/proxy_webapp_war/siteAdmin.jsp">ADMIN</a>
    <a href="http://localhost:8080/proxy_webapp_war/siteUser.jsp">USER</a>
</footer>
</body>
</html>
siteUser.jsp
7 KB