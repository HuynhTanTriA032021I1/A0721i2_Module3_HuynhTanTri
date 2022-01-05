<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/1/2022
  Time: 8:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Ứng dụng Product Discount Calculator</title>
  </head>
  <body>
  <form method="post" action="/display-discount">
  <h2>Product Description: Mô tả của sản phẩm</h2>
    <input type="text"  name="name" placeholder="Nhập mô tả sản phẩm">
  <h2>List Price: Giá niêm yết của sản phẩm</h2>
    <input type="number"  name="price" placeholder="Nhập giá sản phẩm">
  <h2>Discount Percent: Tỷ lệ chiết khấu (phần trăm)</h2>
    <input type="number"  name="discount" placeholder="Nhập tỷ lệ chiết khấu">
  <br>
  <br>
  <input type="submit" id="subit" value="Calculate Discount (Tính chiết khấu)" >
  </form>
  </body>
</html>
