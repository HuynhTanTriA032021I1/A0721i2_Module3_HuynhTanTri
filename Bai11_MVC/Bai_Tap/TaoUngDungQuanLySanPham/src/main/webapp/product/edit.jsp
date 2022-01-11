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
    <title>Chỉnh Sửa Thông Tin Sản Phẩm</title>
</head>
<body>
<h1>Chỉnh Sửa Thông Tin Sản Phẩm</h1>
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
        <legend>Thông Tin Chi Tiết Sản Phẩm</legend>
        <table>
            <tr>
                <td>Tên Sản Phẩm: </td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>Giá: </td>
                <td><input type="number" name="price" id="price" value="${requestScope["product"].getEmail()}"></td>
            </tr>
            <tr>
                <td>Xuất Sứ: </td>
                <td><input type="text" name="origin" id="origin" value="${requestScope["product"].getAddress()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Xác Nhận Thay Đổi"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
