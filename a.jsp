<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Random" %>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try {
      Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mysql://hostname:3306/databasename", "uname", "passwd");
      st = con.createStatement();
      rs = st.executeQuery("SELECT schemaname, tablename FROM pg_catalog.pg_tables");
      int cnt = 1;
      out.println("<div style='display: none;'>");
      while (rs.next()) {
        out.println(rs.getString(1) + " " + rs.getString(2) + "<br>");
      }
      out.println("</div>");
      con.close();
    } catch (Exception ex) {
      out.println(ex);
    }
%>
