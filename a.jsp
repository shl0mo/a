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
      rs = st.executeQuery("SELECT datname FROM pg_database WHERE datistemplate = false");
      int cnt = 1;
      out.println("<div style='display: none;'>");
      while (rs.next()) {
        out.println(rs.getString(1) + "<br>");
      }
      out.println("</div>");
      con.close();
    } catch (Exception ex) {
      out.println(ex);
    }
%>
