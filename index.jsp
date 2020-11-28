<%-- 
    Document   : index
    Created on : Dec 6, 2019, 2:30:55 PM
    Author     : USER
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql"uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource var="dataSource"
                   driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/ppdb"
                   user="root"password=""/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Penerimaan Siswa Baru</title>
        <link rel="stylesheet" type="text/css" href="config/ppdb.css" media="all"/>
    </head>
    <body>
        <div id="wrap">
            <div id="header">
                <p style="float:center; text-align: center">
                    <img src="image/logo.png" >
                </p>       
            </div>
        
            <div id="menu">
                <nav>
                <ul>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="index.jsp?hal=berita&aksi=SIMPAN">Home</a></li>
                    <li><a href="#">Tentang Kami ▿</a>
                    <ul>
                        <li><a href="index.jsp?hal=sambutan&aksi=SIMPAN">Sambutan </a></li>
                        <li><a href="index.jsp?hal=visimisi&aksi=SIMPAN">Visi & Misi</a></li>
                        <li><a href="index.jsp?hal=struktur&aksi=SIMPAN">Struktur Organisasi</a></li>
                        <li><a href="index.jsp?hal=data&aksi=SIMPAN">Data Sekolah</a></li>
                    </ul></li>
                    <li><a href="#">Kompetensi Keahlian ▿</a>
                    <ul>
                        <li><a href="index.jsp?hal=tav&aksi=SIMPAN">T. Audio Video</a></li>
                        <li><a href="index.jsp?hal=te&aksi=SIMPAN">T. Elektronika Industri</a></li>
                        <li><a href="index.jsp?hal=tl&aksi=SIMPAN">T. Instalasi Listrik</a></li>
                        <li><a href="index.jsp?hal=tm&aksi=SIMPAN">Teknik Pemesinan</a></li>
                        <li><a href="index.jsp?hal=toi&aksi=SIMPAN">T. Otomasi Industri</a></li>
                        <li><a href="index.jsp?hal=mm&aksi=SIMPAN">Multimedia</a></li>
                    </ul></li>
                    <li><a href="#">Jalur PPDB SMK ▿</a>
                    <ul>
                        <li><a href="index.jsp?hal=japrest&aksi=SIMPAN">Jalur Prestasi</a></li>
                        <li><a href="index.jsp?hal=afirmasi&aksi=SIMPAN">Jalur Afirmasi</a></li>
                    </ul></li>
                    <li><a href="#">Jadwal & Syarat Pendaftaran ▿</a>
                    <ul>
                        <li><a href="index.jsp?hal=jadwal&aksi=SIMPAN">Jadwal Pendaftaran</a></li>
                        <li><a href="index.jsp?hal=syarat&aksi=SIMPAN">Syarat Pendaftaran</a></li>
                        <li><a href="index.jsp?hal=alur&aksi=SIMPAN">Alur Pendaftaran</a></li>
                    </ul></li>
                    <li><a href="beranda.jsp?halaman=daftar&aksi=SIMPAN">Daftar Sekarang</a></li>
                    <li><a href="login.jsp">Login Admin</a></li>
                </ul>
                </nav>
            </div>
            <div id="poto">
                <img src="image/smk.jpg" > 
            </div>
           <div class="kotak" align="justify">
            <marquee behavior="scroll" direction="left" scrollamount="3">
                <h4>Selamat Datang Di Web Pendaftaran Peserta DIdik Baru SMK 2 Purwokerto 
                    - Pengumuman PPDB Tanggal 8 s.d 13 Juni 2020 
                    - Pendaftaran Dibuka Tanggal 17 Juni 2020, mulai pukul 08.00 WIB 
                    - Pendaftaran Ditutup Tanggal 25 Juni 2020, pukul 16.00 WIB 
                    - Evaluasi dan Seleksi Tanggal 26 s.d 29 Juni 2020 
                    - Pengumuman Hasil Tanggal 30 Juni 2020 selambatnya pukul 23.55 WIB 
                    - Daftar Ulang Tanggal 1 s.d 3 Juli 2020 
                    - Hari Pertama Masuk Sekolah Tanggal 13 Juli 2020
                </h4>
            </marquee> </div>
            
            <div id="right_column">
                <div class="box" align="center">
                    <div class="subtitle"><h3>Calender</h3></div>
                    <%@include file="calender.jsp" %> 
            </div>
                <div class="box" align="center">
                    <div class="subtitle"><h3>Saran</h3></div>
                    <%@include file="saran.jsp" %> 
            </div>
                <div class="box" align="center">
                    <div class="subtitle"><h3>Anggota Kelompok</h3></div>
                    <br>
                        <%@include file="anggota.jsp" %>
                </div>
                
            </div>
                <div id="left_column">
                    <table width="100%">
                        <tr>
                                 <td valign="top" width="110%">
                            <c:choose>
                                
                                <c:when test="${param.hal=='sambutan'}">
                                    <%@include file="sambutan.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='visimisi'}">
                                    <%@include file="visimisi.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='tav'}">
                                    <%@include file="tav.jsp" %> 
                                </c:when>
                                 <c:when test="${param.hal=='jadwal'}">
                                    <%@include file="jadwal.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='toi'}">
                                    <%@include file="toi.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='te'}">
                                    <%@include file="te.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='tl'}">
                                    <%@include file="tl.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='tm'}">
                                    <%@include file="tm.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='mm'}">
                                    <%@include file="mm.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='japrest'}">
                                    <%@include file="prestasi.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='afirmasi'}">
                                    <%@include file="afirmasi.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='syarat'}">
                                    <%@include file="syarat.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='alur'}">
                                    <%@include file="alur.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='data'}">
                                    <%@include file="data.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='struktur'}">
                                    <%@include file="struktur.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='jurusan'}">
                                    <%@include file="jurusan.jsp" %> 
                                </c:when>
                                <c:when test="${param.hal=='daftar'}">
                                    <%@include file="daftar.jsp" %> 
                                </c:when>
                                <c:otherwise>
                                    <%@include file="berita.jsp" %>
                                </c:otherwise>
                            </c:choose>
                            </td>
                            
                        </tr>
                    </table>
     <br><br>
            </div>
                            <div style="clear: both;"> </div>
                            <br><br><br><br><br><br>
                            <div class="footer">
                                
                                Support by <a href="http://bsi.ac.id/">Universitas Bina Sarana Informatika</a>,<br>
                                Kelompok PPDB Online
                                SMKN 2 PURWOKERTO 2020 <br>
                                
                            </div>
        
        </div>
    </body>
</html>