Jessie
#7066

Jessie — 11/27/2022 2:01 PM
ban update lai cai schema va coi cai query nha
_-_ — 11/27/2022 2:06 PM
Okay thanks bn nha.
Jessie — 11/27/2022 2:16 PM
Cần thêm query gì nói mình nha
_-_ — 11/27/2022 2:17 PM
OK bạn nha. Tí nữa mình sẽ làm tiếp và update với bạn. Mình cũng vừa gửi mail cho ông Thầy rồi.
Jessie — 11/27/2022 2:23 PM
Ok bạn
Jessie — 11/27/2022 3:09 PM
Image
minh log-in thu thi thay loi nay
ko biet ban co bi ko
_-_ — 11/27/2022 3:10 PM
À mình login OK nha. K bị lỗi.
Jessie — 11/27/2022 3:11 PM
cai nay chac do may minh roi
_-_ — 11/27/2022 3:11 PM
Hy vọng tối nay avaialbe mình connec tí mình show bạn.
Jessie — 11/27/2022 3:12 PM
minh sua dc loi do roi
Image
nhung h lai thay cai nay
cai nay minh nghi do siteUser dang update
_-_ — 11/27/2022 7:50 PM
ừa ngộ quá vì bên mình chạy OK k bị gì hết.
Jessie — 11/27/2022 9:46 PM
Uh mình cũng k hiểu luôn
Tại mình cần run để check và viết report.
Bạn làm hw4 xong chưa
_-_ — 11/27/2022 10:09 PM
😦 Mình chưua xong nah.
Cái project mình almost rồi. Nhưng mình chưa pushed code đâu
chắc sáng T3 hay trước Office Hour mình meet up với bạn virtually/in-person để mình share code cho bạn push nha.
T5 mới due report đúng k bn?
Jessie — 11/27/2022 11:27 PM
Uh thứ 5 mình mới due lận, nếu muốn thứ 3 vô sớm coi cũng đc
Hw4 mình ko hiểu nhiều lắm, nên làm hoài chưa xong
_-_ — 11/28/2022 7:02 PM
Ôi trời mình nghe bạn nói hw4 sao hoang mang quá mình còn 1 nùi chưa làm xong đây .
😭
Mình còn refine lại cái Project tẹo rồi T3 mình chia ra submit.
chia ra commit.
Jessie — 11/28/2022 7:03 PM
Mình đang email hỏi thầy
Có gì mình làm xong gửi bạn coi thử
Có cần mình làm phụ gì ko
_-_ — 11/28/2022 7:03 PM
=))) K biết ổng tính extend k hỉ..
Jessie — 11/28/2022 7:03 PM
Nếu nhiều ng xin
_-_ — 11/28/2022 7:03 PM
À chắc k có gì nữa đâu bạn refine lại thôi à.
Jessie — 11/28/2022 7:03 PM
Chứ chapter này mình ko hiểu lắm 😦
_-_ — 11/28/2022 7:04 PM
Bạn test mấy cái query là works ok hết rồi đúng k?
Jessie — 11/28/2022 7:04 PM
Uh mình test nó work hết đó bạn
_-_ — 11/28/2022 7:05 PM
OK la la. Thanks bn nha. tối nay xong cái 172 mình làm tiếp...
Hy vọng xong cái tuần này sớm và thành công 😭
Jessie — 11/28/2022 7:07 PM
Yeah, xong cho rồi, quá là nhiều việc luôn
Nếu mai muốn vô sớm để bàn thì nói mình nha
_-_ — 11/28/2022 7:08 PM
OK bạn.. mình hy vọng là xong sớm để meet ông Thầy thôi, có tgian làm mấy cái khác nữa.. Mai team 195 mình plan là xong cái report để gửi ông Thầy sign nữa nên cũng super busy.
Jessie — 11/28/2022 7:09 PM
Uh mình cũng vậy
Quá trời nhiều việc luôn
_-_ — 11/28/2022 11:53 PM
https://docs.google.com/presentation/d/16baSPUjD1-gc-2CpYu7FtGEtBfmfjNJQ1_vYVt1puq8/edit#slide=id.g19c5698e68b_0_0

Hello bạn cho cái final presetn mình plan là làm như slide 1 trong cái slides mình vừa gửi á.

Bạn xem thử nha.
Google Slides: Sign-in
Access Google Slides with a personal Google account or Google Workspace account (for business use).
_-_ — Yesterday at 12:21 PM
Bạn ơi, bn push mấy cái này lên Git nha.
<%--
  Created by IntelliJ IDEA.
  User: lamnguyen
  Date: 10/26/22
  Time: 5:00 PM
  To change this template use File | Settings | File Templates.
Expand
siteAdmin.jsp
5 KB
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: hongvu
  Date: 11/25/22
  Time: 5:00 PM
  To change this template use File | Settings | File Templates.
Expand
siteUser.jsp
8 KB
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%
  String db = "cs157a";
Expand
validateAdmin.jsp
2 KB
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%
  String db = "cs157a";
Expand
validateUser.jsp
2 KB
<%@ page import="java.sql.*" %>
<%
  String db = "cs157a";
  String user; // assumes database name is the same as username
  user = "root";
  String pwd = "xx";
Expand
regis.jsp
3 KB
<%--
  Created by IntelliJ IDEA.
  User: lamnguyen
  Date: 10/26/22
  Time: 5:00 PM
  To change this template use File | Settings | File Templates.
Expand
register.jsp
4 KB
Fetch trước rồi push vào master branch nha bn.
Thank you.
Also bạn làm hw xong chưa???
Jessie — Yesterday at 12:50 PM
Thanks bạn
Gần xong rồi nè
Để mình gửi bạn
Mình share với bạn rồi check mail nha
_-_ — Yesterday at 12:56 PM
Thanks bn nha. Mỗi câu mình còn stuck 1 vài câu nhỏ.
còn cái code phần này mình update cũng kha khá code mới nên mình pretty sure là cái % của bn sẽ lên. Mình còn update cái siteAdmin và siteUser nữa rồi gửi bn push luôn.
Thanks bn nha. Mình nhận đươc rồi.
Image
cái này là câu 11 của mình nè bn xem thử nha.
@Jessie
Jessie — Yesterday at 12:59 PM
Okie thanks bạn, mình chưa làm kịp câu đó
Với bạn làm câu 7 chưa ha
Mình còn bị kẹt 3 câu nhỏ của 7
_-_ — Yesterday at 1:00 PM
Ồ chưa hình như bn mình làm rồi để mình hỏi thử.
sẽ gửi qua cho bn trước 2h
_-_ — Yesterday at 1:43 PM
Oops bn ơi b mình làm câu 7 sai rồi để mình check lại rồi share với bn nha... nếu mình xong trc bn 😄
Jessie — Yesterday at 1:46 PM
Okie bạn, mình chưa nghĩ ra nửa
Ko hiểu làm chase table
_-_ — Yesterday at 2:01 PM
Image
Bn tham khảo thử nha
_-_ — Yesterday at 2:10 PM
bạn ơi, câu 5.3 bạn check lại hình như bn thiếu AB cũng là superkey thì phải.
Jessie — Yesterday at 2:27 PM
Với bạn xem thử câu 10 nha
Ban có làm giống mình ko
_-_ — Yesterday at 2:31 PM
Image
à để mình check lại nha. Mình đang chek lại câu 8 của mình hình như mình làm sai vài chỗ.
cải screenshot là câu 11 á bn.
Jessie — Yesterday at 2:37 PM
Câu 10 ak bạn
_-_ — Yesterday at 2:38 PM
à để mình xem lại câu 10 của mình cũng dài quá. Mình đang check câu 11B còn câu 11A hình như đúng rồi.
Jessie — Yesterday at 2:56 PM
Bạn biết phòng thầy ở đâu ko?
_-_ — Yesterday at 3:28 PM
Image
_-_ — Yesterday at 4:05 PM
Image
_-_ — Yesterday at 4:40 PM
nãy OH ông Thầy mới nói khác..
bây h bảo demonstrate nữa 🥹
Jessie — Yesterday at 4:41 PM
Demonstrate cái nào ta
_-_ — Yesterday at 4:43 PM
Mình nghe là cái system chắc cái ERD.. chắc để mai discuss thêm héng.
Jessie — Yesterday at 4:43 PM
Ok bạn
Jessie — Yesterday at 5:14 PM
sai qua troi sai
_-_ — Yesterday at 7:36 PM
=))
à câu 11
b
mình có hỏi ổng là cái ổng show có phải unique answer k? Mình có show cái của mình thì Thầy bảo là It looks correct nếu bị deduct points thì nói ổng.
Jessie — Yesterday at 7:56 PM
Oh, mình đi hỏi câu 10, thì ổng kêu là cái đó duplicate đc
Thế là thiếu mấy dòng
_-_ — Yesterday at 8:06 PM
Theo như ổng bảo là k đếm đâu bn.. Conceptually đúng là ổng cho credits á.
Jessie — Yesterday at 8:06 PM
Vay cung okay
Chứ sai tùm lum hà
Câu 4 mình làm sai đề luôn
_-_ — Yesterday at 8:14 PM
K sao đâu bạn sẽ đậu và sẽ ra trường =)))
Mình follow được 1 2 câu đầu sau đó thấy mệt mỏi quá .
=))
Jessie — Yesterday at 8:15 PM
Haha, chỉ cần vậy thôi
Uh nghe ổng giải mệt thiệt chứ
﻿
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
            String password = "xx";
            try {
                java.sql.Connection con;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_proxy?autoReconnect=true&useSSL=false",user, password);
                Statement stmt = con.createStatement();

                PreparedStatement pst = con.prepareStatement("SELECT employeeID, firstName, lastName, addressLine1, addressLine2, city, state, postalCode, email, position FROM employees WHERE employeeID = ?");
                pst.setInt(1, uid);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
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
        <form action="/login.jsp">
            <table style="width:100%">
                <tr>
                    <td style="width:10%"><input class="button button1" type="submit" value="TEST CONNECTION"></td>
                    <td><input style="width:400px;padding: 19px 33px;margin: 4px 2px;" type="text" id="url" name="url" value="url"></td>
                </tr>
            </table>
        </form>


        <%
            }
        %>

    </article>
    <nav>
        <h3>REQUEST HISTORY</h3>
        <table style="width:25%">
            <tr>
                <th colspan="2"></th>
            </tr>
            <tr>
                <th>URL</th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th>STATUS</th>
            </tr>
            <%
                PreparedStatement listHistory = con.prepareStatement("SELECT employeeID, firstName FROM employees");
                ResultSet rs1 = listHistory.executeQuery();
                while (rs1.next()) {
            %>

            <tr  >
                <%  out.println("<td style=\"text-align: center;\">" +rs1.getString(1)+ "</td>");%> <!--URL-->
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <%  out.println("<td style=\"text-align: center;\">" +rs1.getString(2)+ "</td>");%> <!--REQUEST STATUS-->
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
8 KB