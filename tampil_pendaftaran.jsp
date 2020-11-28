<%@page import="control.koneksi"%>
<%@page import="java.sql.*"%>
<%
    koneksi kon = new koneksi(); //--koneksi database--
    ResultSet rs = null;
%>
<h2 style="background-color: #0066CC; color:white; text-align:center"><br>Data Calon Siswa SMKN 2 Purwokerto <br><br></h2>
<br>

<form action="" method="post">
    Cari Data Calon Siswa : <input type="text" name="cari" value="${param.cari}"/>
    <input type="submit" value="Cari" class="button"/> <br>
</form>
    <sql:query var="querysupplier" dataSource="${dataSource}">
        SELECT * from daftar where no_daftar like '%${param.cari}%'
        or kd_jrs like '%${param.cari}%'
    </sql:query>
    <br><table border='1' width='100%' cellpadding='0' cellspacing='0'>
        <tr class='head'>
        <td style='text-align: center'>Nomor Daftar</td>
        <td style='text-align: center'>Nama Akun</td>
        <td style='text-align: center'>Tempat Lahir</td>
        <td style='text-align: center'>Tanggal Lahir</td>
        <td style='text-align: center'>Alamat</td>
        <td style='text-align: center'>Jenis Kelamin</td>
        <td style='text-align: center'>Agama</td>
        <td style='text-align: center'>No HP</td>
        <td style='text-align: center'>Email</td>
        <td style='text-align: center'>Nama Ayah</td>
        <td style='text-align: center'>Nama Ibu</td>
        <td style='text-align: center'>Asal Sekolah</td>
        <td style='text-align: center'>No Ijazah</td>
        <td style='text-align: center'>Kode Jurusan</td>
        <td style='text-align: center'>Uang Pangkal</td>
        <td style='text-align: center'>Biaya Pendaftaran</td>
        <td style='text-align: center'>Total</td>
        <td style='text-align: center'>Action</td>
        </tr>
        <c:forEach var='rowakun' items='${querysupplier.rowsByIndex}'>
            <tr class='isi'>
                <td valign='top'>${rowakun[0]}</td>
                <td valign='top'>${rowakun[1]}</td>
                <td valign='top'>${rowakun[2]}</td>
                <td valign='top'>${rowakun[3]}</td>
                <td valign='top'>${rowakun[4]}</td>
                <td valign='top'>${rowakun[5]}</td>
                <td valign='top'>${rowakun[6]}</td>
                <td valign='top'>${rowakun[7]}</td>
                <td valign='top'>${rowakun[8]}</td>
                <td valign='top'>${rowakun[9]}</td>
                <td valign='top'>${rowakun[10]}</td>
                <td valign='top'>${rowakun[11]}</td>
                <td valign='top'>${rowakun[12]}</td>
                <td valign='top'>${rowakun[13]}</td>
                <td valign='top'>${rowakun[14]}</td>
                <td valign='top'>${rowakun[15]}</td>
                <td valign='top'>${rowakun[16]}</td>
                <td align="center" valign='top' style='text-align: center'><a href='PendaftaranServlet?aksi=HAPUS&nomor=${rowakun[0]}'> Hapus</a>
                </td>
            </tr>
        </c:forEach>
    </table>