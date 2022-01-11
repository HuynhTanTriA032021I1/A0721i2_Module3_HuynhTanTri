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
    <title>VIEW</title>
</head>
<body>
<h1>Thông tin sản phẩm chi tiết</h1>
<p>
    <a href="/products">Trở Lại Danh Sách Sản Phẩm</a>
</p>
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
        <td>Origin: </td>
        <td>${requestScope["product"].getOrigin()}</td>
    </tr>
</table>
</body>
</html>
