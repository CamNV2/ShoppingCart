<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Shop Pages</title>
</head>
<body>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Image</th>
        <th>Action</th>
    </tr>
    <c:forEach var="p" items="${product}">
        <tr>
            <td>${p.id}</td>
            <td><a href="/product/${p.id}">${p.name}</a></td>
            <td>${p.price}</td>
            <td>${p.quantity}</td>
            <td><img src="${p.image}" style="width: 10%"/></td>
            <td>
               <form action="/cart/add" method="post">
                   <input type="hidden" value="${p.id}" name="id"/>
                   <button type="submit" >Add To Cart</button>
               </form>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
