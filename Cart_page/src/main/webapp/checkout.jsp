<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>

<body>
    <div id="container">
        <h1>Thanks for buying our products</h1>
        <p> here a list of products you bought: </p>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <table>
                <thead>
                    <tr>
                        <th>Description</th>
                        <th>Amounts</th>
                        <th>Price</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${cart.items}">
                        <tr>
                            <td>${item.product.description}</td>
                            <td class="right">${item.quantity}</td>
                            <td>${item.product.priceCurrencyFormat}</td>
                            <td>${item.totalCurrencyFormat}</td>
                        </tr>
                    </c:forEach>
                </tbody>
                <tfoot>
                    <tr>
                        <th colspan="3">Total: </th>
                        <td>${cart.getTotalFormat()}</td>
                    </tr>
                </tfoot>
            </table>

            <form action="cart" method="get" class="Butt">
                <input type="hidden" name="action" value="return">
                <d>${cart.ClearItems()}<d>
                        <input class="BUTT" type="submit" value="Continue Shopping">
            </form>
    </div>
    <a href="/"> <button class="Back_BUTT"> Back to home website </button> </a>
</body>

</html>