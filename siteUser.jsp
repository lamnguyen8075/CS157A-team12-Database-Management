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

        <%
            Integer uid = (Integer)session.getAttribute("sid");
            String db = "cs157a";
            String user; // assumes database name is the same as username
            user = "root";
            String password = "Conheo130695";
            try {
                java.sql.Connection con;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_proxy?autoReconnect=true&useSSL=false",user, password);
                Statement stmt = con.createStatement();

                PreparedStatement pst = con.prepareStatement("SELECT employeeID, firstName, lastName, addressLine1, addressLine2, city, state, postalCode, email, position FROM employees WHERE employeeID = ?");
                pst.setInt(1, 100112);

                PreparedStatement pst1 = con.prepareStatement("SELECT d.depName, d.responsibility FROM departments d, belongsto b WHERE b.uname = ? AND d.depName = b.deptName");
                pst1.setInt(1, uid);
                ResultSet rs = pst.executeQuery();
                ResultSet rs2 = pst1.executeQuery();

                while (rs.next() && rs2.next()) {
        %>
        <table>
            <tr>
                <th colspan="5"><h1 style="text-align: center;">PROFILE :: USER</h1></th>
            </tr>
            <tr>
                <th style="text-align: left;"><%  out.println("<label  for=\"username\"><b>Username</b></label>");%></th>
                <th><%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getInt(1)+ "\"  readonly>");%></th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="text-align: left;"><%  out.println("<label for=\"username\"><b>Name</b></label>");%>
                <th><%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getString(2)+ " " +rs.getString(3)+ "\" readonly>");%></th></th>
            </tr>
            <tr>
                <th style="text-align: left;"><%  out.println("<label for=\\\"username\"><b>Email</b></label>");%></th>
                <th><%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getString(9)+ "\" readonly>");%></th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th></th>
                <th></th>
            </tr>
            <tr>
                <th style="text-align: left;"><%  out.println("<label for=\"username\"><b>Position</b></label>");%></th>
                <th><%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getString(10)+ "\" readonly>");%></th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th></th>
                <th></th>
            </tr>
            <tr>
                <th style="text-align: left;"><%  out.println("<label for=\"username\"><b>Department </b></label>");%></th>
                <th><%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs2.getString(1)+ "\" readonly>");%></th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="text-align: left;"><%  out.println("<label for=\"username\"><b>Description</b></label>");%></th>
                <th><%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs2.getString(2)+ "\" readonly>");%></th>
            </tr>
            <tr>
                <th style="text-align: left;"><%  out.println("<label for=\"username\"><b>Address </b></label>");%></th>
                <th><%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getString(4)+ " " + rs.getString(4)+"\" readonly>");%></th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="text-align: left;"><%  out.println("<label for=\"username\"><b>State</b></label>");%></th>
                <th><%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getString(7)+ "\" readonly>");%></th>
            </tr>
            <tr>
                <th style="text-align: left;"><%  out.println("<label for=\"username\"><b>City</b></label>");%></th>
                <th><%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getString(6)+ "\" readonly>");%></th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="text-align: left;"><%  out.println("<label for=\"username\"><b>Zip</b></label>");%></th>
                <th><%  out.println("<input type=\"text\""  +  "name=\"uname\" value=\""+ rs.getString(8)+ "\" readonly>");%></th>
            </tr>
        </table>

        <form action="testConnUser.jsp">
            <table style="width:100%">
                <tr>
                    <td style="width:10%"><input class="button button1" type="submit" value="TEST CONNECTION"></td>
                    <td><input style="width:400px;padding: 19px 33px;margin: 4px 2px;" type="text" id="url" name="url"></td>
                </tr>
            </table>
        </form>
        <%
            }
        %>

    </article>
    <nav>
        <h3  style="text-align: center">REQUEST HISTORY</h3>
        <table style="width:25%">
            <tr>
                <th colspan="2"></th>
            </tr>
            <tr>
                <th style="text-align: left">URL</th>
                <th>&nbsp;&nbsp;&nbsp;</th>
                <th style="text-align: right">STATUS</th>
            </tr>
            <%
                PreparedStatement listHistory = con.prepareStatement("select distinct url, status from request rq, sends s where rq.requestID = s.requestID and s.userid = ?");

                listHistory.setInt(1, uid);
                ResultSet rs1 = listHistory.executeQuery();
                while (rs1.next()) {
            %>

            <tr  >
                <%  out.println("<td style=\"text-align: left;\">" +rs1.getString(1)+ "</td>");%> <!--URL-->
                <th>&nbsp;&nbsp;&nbsp;</th>
                <%  out.println("<td style=\"text-align: right;\">" +rs1.getString(2)+ "</td>");%> <!--REQUEST STATUS-->
            </tr>

            <%
                    }
                    rs.close();
                    stmt.close();
                    con.close();
                } catch(SQLException e) {
                    out.println("SQLException caught: " + e.getMessage());
                }
            %>
        </table>
    </nav>
</div>
<footer>

    <a href="http://localhost:8080/proxy_webapp_war/logout.jsp">LOGOUT</a>
</footer>
</body>
</html>
