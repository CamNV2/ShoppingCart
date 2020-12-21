
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Product List</title>
</head>
<body>
<form:form action="/cart/add" modelAttribute="product">
    <table>
        <tr>

            <th>Name</th>
            <th>Title</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Image</th>
            <th>###</th>
        </tr>

        <tr>
            <td ><input name="id" value="${product.id}" type="hidden"/></td>
            <td>${product.name}</td>
            <td>${product.title}</td>
            <td>${product.price}
            </td>
            <td><input type="number" min="1" value="${product.quantity}"/></td>
            <td><center><img src="${product.image}" style="width: 10%"/></center></td>
            <td><button type="submit">Add to cart</button></td>
        </tr>

    </table>
</form:form>
</body>
</html>
