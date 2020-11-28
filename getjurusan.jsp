<%@page import="java.sql.*" %>
<%@page import="control.koneksi"%>
<%@page import="model.jurusan"%>
<%
   jurusan jurusan = new jurusan();
   koneksi kon = new koneksi();
   ResultSet rs = null;
   String emp_id = request.getParameter("emp_id").toString();
   String data = null;
   Statement st;
   rs = kon.stmt.executeQuery("SELECT * from jurusan where kd_jrs ='" + emp_id + "' ");
   while (rs.next()) {
       data = ":" + rs.getString(3) + ":" + emp_id;
   }
   out.println (data);
%>