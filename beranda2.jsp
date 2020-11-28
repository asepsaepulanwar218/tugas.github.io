<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql"uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource var="dataSource"
                   driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/ppdb"
                   user="root"password=""/>

<!DOCTYPE html> 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>PPDB Online SMKN 2 Purwokerto</title>
    <link href="config/desiign_1.css" rel="stylesheet" type="text/css" />
    <link href="config/cssTable.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="config/setting.js"></script>
</head>
<body>
    <!--
    This is a free CSS template provided by templatemo.com
    -->
    <div id="container_wrapper">
        <div class="spacer"></div>
        <div id="container">
            <div id="menu">
                <nav>
                <ul>
                    <li><a href="#"></a></li>
                    <li><a href="beranda2.jsp?halaman=jurusan&aksi=SIMPAN">Data Jurusan</a></li>
                    <li><a href="beranda2.jsp?halaman=user&aksi=SIMPAN">Data User </a> </li>
                    <li><a href="beranda2.jsp?halaman=tampil_pendaftaran">Data Calon Siswa </a> </li>
                    <li><a href="TampilLapJurusan.jsp">Cetak Data Jurusan </a> </li>
                    <li><a href="TampilLapUser.jsp">Cetak Data User </a> </li>
                    <li><a href="TampilLapDaftar.jsp">Cetak Data Calon Siswa </a> </li>
                    <li><a href="index.jsp">Logout </a> </li>
                    
                </ul>
                </nav>
            </div>
            <div id="header">
                <div id="inner_header">
                    <div id="site_title"> HALAMAN ADMIN<br><br>PPDB ONLINE SMK NEGERI 2 PURWOKERTO</div> <br>
                    <div id="site_slogan">
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
            </marquee>
                    </div>
            </div>
            </div>

            <div id="column">
                <div class="text_area" align="justify">

                    <c:choose>
                        
                        <c:when test="${param.halaman=='tampil_pendaftaran'}">
                            <%@include file="tampil_pendaftaran.jsp" %>
                        </c:when>
                        <c:when test="${param.halaman=='jurusan'}">
                            <%@include file="jurusan.jsp" %>
                        </c:when>
                        <c:when test="${param.halaman=='user'}">
                            <%@include file="user.jsp" %>
                        </c:when>
                        <c:otherwise>
                            <%@include file="tampil_pendaftaran.jsp" %>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

            

            <div id="footer">
                Copyright © 2020 PRODI SISTEM INFORMASI AKUNTANSI UBSI <br>
            </div>

        </div>
        <div class="spacer"></div>
    </div> 
</body>
</html>