<%@page import="java.sql.*" %>
<%@page import="control.koneksi"%>
<%@page import="model.biaya"%>
<%
   biaya biaya = new biaya();
   koneksi kon = new koneksi();
   ResultSet rs = null;
   String emp_id2 = request.getParameter("emp_id2").toString();
   String data = null;
   Statement st;
   rs = kon.stmt.executeQuery("SELECT * from biaya_daftar where id_jalur ='" + emp_id2 + "' ");
   while (rs.next()) {
       data = ":" + rs.getString(3) + ":" + emp_id2;
   }
   out.println (data);
%>