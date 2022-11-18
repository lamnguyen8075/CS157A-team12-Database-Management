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
</style>
<body>
<header><h1 style="text-align: center;">MY PROXY</h1></header>
<div id="main">
    <article>
        <form action="<%=request.getContextPath()%>/request" method="post">
            <table style="with: 100%">
                <tr>
                    <td>Enter your URL: </td>
                    <td><input type="text" name="username" /></td>
                </tr>
            </table>
            <input type="submit" value="Submit Request" />
        </form>
    </article>
    <nav>
    </nav>
</div>
<footer>Footer</footer>
</body>
</html>
