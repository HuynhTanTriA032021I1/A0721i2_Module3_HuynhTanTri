<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/1/2022
  Time: 6:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Xoá Sản Phẩm</title>
</head>
<body>
<h1>Xoá Sản Phẩm</h1>
<p>
    <a href="/products">Trở Lại Danh Sách Sản Phẩm </a>
</p>
<form method="post">
    <h3>Bạn có muốn xoá sản phẩm này không ?</h3>
    <fieldset>
        <legend>Thông Tin Sản Phẩm</legend>
        <table>
            <tr>
                <td>Tên Sản Phẩm: </td>
                <td>${requestScope["product"].getName()}</td>
            </tr>
            <tr>
                <td>Giá: </td>
                <td>${requestScope["product"].getPrice()}</td>
            </tr>
            <tr>
                <td>Xuất Sứ: </td>
                <td>${requestScope["product"].getOrigin()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Xác Nhận Xoá Sản Phẩm"></td>
                <td><a href="/products">Trở lại Danh Sách Sản Phẩm</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
