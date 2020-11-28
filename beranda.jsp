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
    <link href="config/desiign.css" rel="stylesheet" type="text/css" />
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
            <div id="top">  
                <a href="index.jsp"></a>
                <a href="beranda.jsp?halaman=logout"></a>
                <a href="beranda.jsp?halaman=pendaftaran"></a>
                <a href="beranda.jsp?halaman=berhasil"></a>
            </div>
            <div id="header">
                <div id="inner_header">
                    <div id="site_title">APLIKASI PPDB ONLINE <br><br> SMK NEGERI 2 PURWOKERTO</div> <br>
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

            <div id="left_column">
                <div class="text_area" align="justify">

                    <c:choose>
                        
                        <c:when test="${param.halaman=='home'}">
                            <%@include file="home.jsp" %>
                        </c:when>
                        <c:when test="${param.halaman=='daftar'}">
                            <%@include file="daftar.jsp" %>
                        </c:when>
                        <c:when test="${param.halaman=='berhasil'}">
                            <%@include file="berhasil.jsp" %>
                        </c:when>
                        <c:otherwise>
                            <%@include file="daftar.jsp" %>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

            <div id="right_column">
                <div class="box" align="center">
                    <div class="subtitle">Calender</div>
                    <%@include file="calender.jsp" %> 
            </div>
                <div class="box" align="center">
                    <div class="subtitle"><h3>About this website</h3></div>
                    <marquee behavior="scroll" direction="left" scrollamount="3">
                        SISTEM INFORMASI AKUNTANSI UNIVERSITAS BSI KELAS 11.4B.24 APLIKASI PENERIMAAN SISWA BARU
                    </marquee>
                </div>
                <div class="box" align="center">
                    <div class="subtitle"><h3></h3></div>
                    <br>
                        <%@include file="anggota.jsp" %>
                </div>
                <br><br>
            </div>

            <div id="footer">
                Copyright © 2020 PRODI SISTEM INFORMASI AKUNTANSI UBSI <br>
            </div>

        </div>
        <div class="spacer"></div>
    </div> 
</body>
</html>