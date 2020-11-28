<%@page import= "java.sql.ResultSet"%>
<%@page import="model.jurusan"%>
<%@page import= "model.daftar"%>
<%@page import="control.koneksi"%>
<%@page import="java.sql.*"%>
<%
    koneksi kon = new koneksi(); //--koneksi database--
    ResultSet rs = null;
    jurusan jurusan = new jurusan();
    
%>
<h2 style="background-color: #0066CC; color:white; text-align:center"><br>Formulir Pendaftaran Peserta Didik Baru<br><br></h2>
<table border="0">
    <form action="PendaftaranServlet" method="post" onsubmit="return validasi_inputAkun(this)">
        <input type="hidden" name="aksi" value="${param.aksi}"/>
        <tr>
            <td>Nomor Pendaftaran</td> <td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        ResultSet nodaftar = null;
                        nodaftar = kon.stmt.executeQuery("select max(right(no_daftar,4)) as no FROM daftar");
                        while (nodaftar.next()) {
                            if (nodaftar.first() == false) {
                                out.println("<input type='text' class='form-control' id='inputdaftar' readonly value='PDB0001' name='nomor'>");
                            } else {
                                nodaftar.last();
                                int autodaftar = nodaftar.getInt(1) + 1;
                                String nomordaftar = String.valueOf(autodaftar);
                                int noLong = nomordaftar.length();
                                
                                for (int a = 1; a < 5 - noLong; a++) {
                                    nomordaftar = "0" + nomordaftar;
                                }
                                String nomerdaftar = "PDB" + nomordaftar;
                                out.println("<input type='text' class='form-control' id='inputdaftar' readonly value='" + nomerdaftar + "' name='nomor'>");
                            }
                            
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                    %> </td>
        </tr>
        <tr>
            <td>Nama Lengkap</td> <td><input type="text" name="nama" value="${param.nama_daftar}"/> </td>
        </tr>
        <tr>
            <td>Tempat Lahir</td><td><input type="text" name="tempat" value="${param.tempat_lahir}"/> </td>
        </tr>
        <tr>
            <td>Tanggal Lahir</td><td><input type="date" name="tanggal" value="${param.tgl_lahir}"/> </td>
        </tr>
        <tr>
            <td>Alamat</td><td><input type="text" name="alamat" value="${param.alamat}"/> </td>
        </tr>
        <tr>
            <td>Jenis Kelamin</td>
            <td><input type="radio" name="jk" value="Laki-laki"/>Laki-Laki 
            <input type="radio" name="jk" value="Perempuan"/>Perempuan</td>
        </tr>
        <tr>
            <td>Agama</td> 
            <td><select name="agama">
                <option value="">-Pilih Agama-</option> 
                <option value="Islam">Islam</option> 
                <option value="Protestan">Protestan</option>
                <option value="Hindu">Hindu</option>
                <option value="Budha">Budha</option>
                <option value="Katolik">Katolik</option>
            </select>
        </tr>
        <tr>
            <td>No HP</td><td><input type="text" name="hp" value="${param.no_hp}"/> </td>
        </tr><tr>
            <td>Email</td><td><input type="text" name="email" value="${param.email}"/> </td>
        </tr>
        <tr>
            <td>Nama Ayah</td><td><input type="text" name="ayah" value="${param.nama_ayah}"/> </td>
        </tr>
        <tr>
            <td>Nama Ibu</td><td><input type="text" name="ibu" value="${param.nama_ibu}"/> </td>
        </tr>
        <tr>
            <td>Asal Sekolah</td><td><input type="text" name="asal" value="${param.asal}"/> </td>
        </tr>
        <tr>
            <td>No Ijazah</td><td><input type="text" name="ijazah" value="${param.no_ijazah}"/> </td>
        </tr>
        <td>Kejuruan Yang Dipilih</td> 
        <td><select name="kode" onchange="showEmp(this.value);">
                        <option value="-1">Pilih Jurusan</option>
                    <%
                        rs = kon.stmt.executeQuery("SELECT * from jurusan ");
                        while (rs.next()) {
                            jurusan.setKodejurusan(rs.getString("kd_jrs"));
                            jurusan.setNamajurusan(rs.getString("nm_jrs"));
                    %>
                    <option value="<%=jurusan.getKodejurusan()%>"><%=jurusan.getKodejurusan()%>
                        || <%=jurusan.getNamajurusan()%></option>
                    <%  } %>
                </select></td>
            </tr>
            <input type="hidden" name="emp_id" id="emp_id" value="">
            <tr>
                <td>Sumbangan Pendidikan</td>   <td><input type="text" name="pangkal" id="ename" value=""
                readonly="readonly" onkeyup="sumPesan();"></td>
            </tr>
    </table><br>
    <table>
        *Silahkan Masukan Biaya Pendaftaran<br>
         1. Jalur Afirmasi : Rp 200.000,- Ketik "200000" <br>
         2. Jalur Prestasi : Rp 150.000,- Ketik "150000"
                <tr>
                <td>Biaya Pendaftaran</td>   <td><input type="text" name="biaya" id="biaya" onkeyup="sumPesan();" value=""></td>
            </tr>
            <tr>
                <td>Total Yang Harus Dilunasi Saat Daftar Ulang</td>       <td><input type="text" name="sub" id="subtotal" readonly="readonly"></td>
            </tr>
    </table>
    <table>
            *Jika memilih jalur Afirmasi silahkan upload transkip nilai smester 1-5 <br>
            *jika memilih jalur prestasi silahkan upload piagam atau sertifikat presentasi<br>
            <tr>
        <td>Berkas: </td>
        <td><input type="file" name="photo" size="50"/></td>
    </tr>
        <tr>
            <td><input type="submit" value="SIMPAN" class="button"/></td> <td></td>
        </tr>
    </form>
</td></tr></table><br>