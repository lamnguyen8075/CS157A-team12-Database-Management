<%@ page import="java.sql.*" %>
<%@ page import="java.util.Random" %>
<%
  String db = "cs157a";
  String user; // assumes database name is the same as username
  user = "root";
  String pwd = "Conheo130695";
  try {
    Integer uid = (Integer)session.getAttribute("sid");
    String uuid = uid.toString();

    Random rand = new Random();
    int int_random = rand.nextInt(199);
    String str = "r" + String.valueOf(int_random);
    String testURL = request.getParameter("url");
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    java.sql.Connection conn;
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_proxy?autoReconnect=true&useSSL=false",user, pwd);
    PreparedStatement ps = conn.prepareStatement("Select url,wid from restrictedWebsites where url = ?");
    ps.setString(1,testURL);
    ResultSet rs = ps.executeQuery();


    if(rs.next()){
      String websiteID = rs.getString(2);
      PreparedStatement checkServer = conn.prepareStatement("Select ca.wid, ca.sid, s.webCategory from checkAccess ca,server s where ca.sid = s.sid and ca.wid = ?");
      checkServer.setString(1,websiteID);
      ResultSet rs1 = checkServer.executeQuery();

      PreparedStatement insertSite1 = conn.prepareStatement("INSERT INTO request (requestID, reason, status,URL,userID) VALUES (?,'For business purpose','APPROVED',?,null)");
      insertSite1.setString(1,str);
      insertSite1.setString(2,testURL);
      int rsInsert1 = insertSite1.executeUpdate();

      PreparedStatement insertSends1 = conn.prepareStatement("INSERT INTO sends(userID,requestID) VALUES (?,?)");
      insertSends1.setString(1,uuid);
      insertSends1.setString(2,str);
      int rsinsertSends1 = insertSends1.executeUpdate();
      response.sendRedirect("/proxy_webapp_war/siteUser.jsp");
    }
    else{
      PreparedStatement insertSite = conn.prepareStatement("INSERT INTO request (requestID, reason, status,URL,userID) VALUES (?,'For business purpose','PENDING',?,null)");
      insertSite.setString(1,str);
      insertSite.setString(2,testURL);
      int rsInsert = insertSite.executeUpdate();

      PreparedStatement insertSends = conn.prepareStatement("INSERT INTO sends(userID,requestID) VALUES (?,?)");
      insertSends.setString(1,uuid);
      insertSends.setString(2,str);
      int rsinsertSends = insertSends.executeUpdate();
      response.sendRedirect("/proxy_webapp_war/siteUser.jsp");
    }
  } catch(SQLException e) {
    out.println("SQLException caught: " + e.getMessage());
  }
%>