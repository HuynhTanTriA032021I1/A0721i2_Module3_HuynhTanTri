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
    <title>Thêm Sản Phẩm Mới</title>
    <style>
        .message{
            color: greenyellow;
        }
    </style>
</head>
<body>
<h1>Thểm Sản Phẩm Mới</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Trở Lại Danh Sách Sản Phẩm</a>
</p>
<form method="post">
    <fieldset>
        <legend>Nhập Thông Tin Sản Phẩm</legend>
        <table>
            <tr>
                <td>Tên Sản Phẩm: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Giá: </td>
                <td><input type="number" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Xuất Sứ: </td>
                <td><input type="text" name="origin" id="origin"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Thểm Sản Phẩm"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
