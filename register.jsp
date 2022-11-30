<%--
  Created by IntelliJ IDEA.
  User: lamnguyen
  Date: 10/26/22
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
        padding: 14px 20px;
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
</style>
<body>
<header><h1 style="text-align: center;">MY PROXY</h1></header>
<div id="main">
    <article><h2></h2></article>
    <nav>
        <h1 style="text-align: center;">REGISTER</h1>
        <form action="regis.jsp" method="post">
            <div class="container">
                <label for="username"><b>Username</b></label>
                <input type="text" placeholder="Username" name="username" required>

                <label for="password"><b>Password</b></label>
                <input type="password" placeholder="Password" name="password" required>

                <label for="email"><b>Email</b></label>
                <input type="text" placeholder="Enter Email" name="email" required>

                <label for="role"><b>First Name</b></label>
                <input type="text" placeholder="Enter Position" name="firstName" required>

                <label for="role"><b>Last Name</b></label>
                <input type="text" placeholder="Enter Position" name="lastName" required>

                <label for="role"><b>Address Line 1</b></label>
                <input type="text" placeholder="Enter addressLine1" name="addressLine1" required>

                <label for="role"><b>Address Line 2</b></label>
                <input type="text" placeholder="Enter addressLine2" name="addressLine2" required>

                <label for="role"><b>City</b></label>
                <input type="text" placeholder="Enter City" name="city" required>

                <label for="role"><b>Position</b></label>
                <input type="text" placeholder="Enter Position" name="position" required>

                <label for="role"><b>State</b></label>
                <input type="text" placeholder="Enter State" name="state" required>

                <label for="role"><b>Zipcode</b></label>
                <input type="text" placeholder="Enter Postal" name="postal" required>

                <button type="submit">Register</button>
            </div>
        </form>
    </nav>
</div>
<footer>
    <a href="http://localhost:8080/proxy_webapp_war/profile.jsp">PROFILE</a>
    <a href="http://localhost:8080/proxy_webapp_war/login.jsp">LOGIN</a>
    <a href="http://localhost:8080/proxy_webapp_war/register.jsp">REGISTER</a>
    <a href="http://localhost:8080/proxy_webapp_war/siteAdmin.jsp">ADMIN</a>
    <a href="http://localhost:8080/proxy_webapp_war/siteUser.jsp">USER</a>
</footer></body>
</html>