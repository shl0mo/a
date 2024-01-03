<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Random" %>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try {
      Class.forName("org.postgresql.Driver");
      con = DriverManager.getConnection("jdbc:postgresql://hostname:5432/databasename", "uname", "passwd");
      st = con.createStatement();
      rs = st.executeQuery("SELECT * FROM tablename");
      int cnt = 1;
      out.println("<div style='display: none;'>");
      while (rs.next()) {
        out.println(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4) + " " + rs.getString(5) + " " + rs.getString(6) + " " + rs.getString(7) + " " + rs.getString(8) + " " + rs.getString(9) + " " + rs.getString(10) + " " + rs.getString(11) + " " + rs.getString(12) + " " + rs.getString(13) + " " + rs.getString(14) + " " + rs.getString(15) + " " + rs.getString(16) + " " + rs.getString(17) + " " + rs.getString(18) + " " + rs.getString(19) + " " + rs.getString(20) + rs.getString(21) + " " + rs.getString(22) + " " + rs.getString(23) + " " + rs.getString(24) + " " + rs.getString(25) + " " + rs.getString(26) + " " + rs.getString(27) + " " + rs.getString(28) + " " + rs.getString(29) + " " + rs.getString(30) +rs.getString(31) + " " + rs.getString(32) + " " + rs.getString(33) + " " + rs.getString(34) + " " + rs.getString(35) + " " + rs.getString(36) + " " + rs.getString(37) + " " + rs.getString(38) + " " + rs.getString(39) + "<br>");
      }
      out.println("</div>");
      con.close();
    } catch (Exception ex) {
      out.println(ex);
    }
%>
