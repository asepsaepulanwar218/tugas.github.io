<%@page import="control.koneksi"%>
<%@page import="java.sql.*"%>
<table border="0">
    <form action="SaranServlet" method="post" onsubmit="return validasi_inputAkun(this)">
        <input type="hidden" name="aksi" value="${param.aksi}"/>
        <tr>
            <td>Nama</td><td><input type="text" name="nama" value="${param.no_akun}"/> </td>
        </tr>
        <tr>
            <td>Saran</td> <td><textarea name="saran"> </textarea></td>
        </tr>
        <tr>
            <td><input type="submit" value="Kirim" class="button"/></td> <td></td>
        </tr>
    </form>
</td></tr></table><br>