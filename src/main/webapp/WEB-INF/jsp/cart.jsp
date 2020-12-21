<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="boot" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Cart Page</title>
</head>
<body>
<h1>Total : ${sessionScope.gioHang.total}</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Image</th>
        <th>Total</th>
        <th>Remove</th>
    </tr>
    <c:forEach var="p" items="${sessionScope.gioHang.items}">
        <tr>
            <td>${p.product.id}</td>
            <td><a href="/product/${p.product.id}">${p.product.name}</a></td>
            <td>${p.product.price}</td>
            <td><form action="/cart/update">
                <input type="hidden" value="${p.product.id}" name="id"/>
                <input  type="number" min="1" value="${p.quantity}" name="qty"/>
                <button type="submit">Update</button>
            </form></td>
            <td><center><img src="${p.product.image}" style="width: 10%"/></center></td>
            <td>${p.subTotal}</td>
            <td>
                <form action="/cart/remove">
                    <input type="hidden" value="${p.product.id}" name="id"/>
                    <button type="submit">Remove</button>
                </form>
            </td>
        </tr>
    </c:forEach><br>

</table>
<a href="/shop">Continue Buy</a>
</body>
</html>
