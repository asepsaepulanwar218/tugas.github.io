<%-- 
    Document   : login
    Created on : Dec 20, 2019, 4:40:39 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Halaman Login</title>
        <link rel="stylesheet" type="text/css" href="config/login.css" media="all"/>
        <style type="text/css">
            html, body {
                width: 100%;
            }
            table{
                margin:0 auto;
            }
            h1{
                text-align: center;
                font-family: times new roman;
            }
        </style>
    </head>
    <body>
        <br><br><br><br><br><br><br><br>
        <h1>Silahkan Login Disini</h1>
    <form method="post" action="proses">
        <table border="1" width="30%" cellpadding="3">
            <thead>
                <tr>
                    <th colspan="2">Login Aplikasi</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td align="center">Username</td>
                    <td align="center"><input type="text" name="user" value=""/></td>
                </tr>
                <tr>
                    <td align="center">Password</td>
                    <td align="center"><input type="password" name="sandi" value="" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Login" /></td>
                </tr>
            </tbody>
        </table>
    </form>
    </body>
</html>
