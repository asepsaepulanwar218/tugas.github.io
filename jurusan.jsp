<%@page import="control.koneksi"%>
<%@page import="java.sql.*" %>
<h1>Data Master Jurusan</h1>
<table border="0">
    <form action="JurusanServlet" method="post" onsubmit="return validasi_inputJurusan(this)">
    <input type="hidden" name="aksi" value="${param.aksi}"/>
    <tr>
        <td>Kode Jurusan</td> <td>: <input type="text" name="kode" value="${param.kd_jrs}"/> </td>
    </tr>
    <tr>
        <td>Nama Jurusan</td> <td>: <input type="text" name="nama" value="${param.nm_jrs}"/></td>
    </tr>
    <tr>
        <td>Biaya Pendaftarn</td> <td>: <input type="text" name="biaya" onkeypress="return hanyaAngka(event)" value="${param.biaya}"/></td>
    </tr>
    <tr>
        <td>Uang Pangkal</td> <td>: <input type="text" name="pangkal" onkeypress="return hanyaAngka(event)" value="${param.u_pangkal}"/></td>
    </tr>
    <tr>
        <td>Kuota</td> <td>: <input type="text" name="kuota" onkeypress="return hanyaAngka(event)" value="${param.kuota}"/></td>
    </tr>
    <tr>
        <td><input type="submit" value="SIMPAN" class="button"/></td> <td> </td>
    </tr>
    </form>
    </td></tr></table><br>
<form action="" method="post">
    Cari Data Jurusan : <input type="text" name="cari" value="${param.cari}"/>
    <input type="submit" value=" Cari " class="button"/> <br>
</form>
<sql:query var="querysupplier" dataSource="${dataSource}">
    SELECT * from jurusan where kd_jrs like '%${param.cari}%' or
      nm_jrs like '%${param.cari}%'
</sql:query>
<br><table border="1" width="100%" cellpadding="0" cellspacing="0">
    <tr class="head">
        <td>Kode Jurusan</td><td>Nama Jurusan</td><td>Biaya Pendaftarn</td><td>Uang Pangkal</td><td>Kuota</td><td>Action</td>
    </tr>
    <c:forEach var="rowbrg" items="${querysupplier.rowsByIndex}">
        <tr class="isi">
            <td valign='top'>${rowbrg[0]}</td>
            <td valign='top'>${rowbrg[1]}</td>
            <td valign='top'>${rowbrg[2]}</td>
            <td valign='top'>${rowbrg[3]}</td>
            <td valign='top'>${rowbrg[4]}</td>
            <td valign='top'><a href='JurusanServlet?aksi=HAPUS&kode=${rowbrg[0]}'> Hapus</a> |
                <a href='beranda2.jsp?halaman=jurusan&aksi=GANTI&kd_jrs=${rowbrg[0]}&nm_jrs=${rowbrg[1]}&biaya=${rowbrg[2]}&u_pangkal=${rowbrg[3]}&kuota=${rowbrg[4]}'> Edit </a>
            </td>    
        </tr>
    </c:forEach>
</table>