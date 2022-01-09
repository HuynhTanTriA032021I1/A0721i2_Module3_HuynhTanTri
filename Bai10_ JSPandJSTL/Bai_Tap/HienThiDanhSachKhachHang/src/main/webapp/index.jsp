<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/1/2022
  Time: 9:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Customer List</title>
  <style>
    img {
      width: 50px;
      height: 50px;
    }
    table, th, td {
      border:1px solid black;
    }
  </style>
</head>
<body>
<div>
  <h2>Danh sách khách hàng</h2>
  <table width="50%">
    <tr>
      <th>Tên</th>
      <th>Ngày sinh</th>
      <th>Địa chỉ</th>
      <th>Ảnh</th>
    </tr>
    <c:forEach var="customer" items="${customerList}">
      <tr>
        <td><c:out value="${customer.name}"></c:out></td>
        <td><c:out value="${customer.dob}"></c:out></td>
        <td><c:out value="${customer.address}"></c:out></td>
        <td><img src="<c:out value="${customer.image}"></c:out>"/></td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>
