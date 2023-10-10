<!DOCTYPE html>
<html lang="en-US">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Murach's Java Servlets and JSP</title>
  <link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>

<body>
  <div id="container">
    <h1>Your cart</h1>

    <table>
      <tr>
        <th>Description</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Total</th>
        <th>Action</th>
      </tr>

      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <tbody>
          <c:forEach var="item" items="${cart.items}">
            <tr>
              <td>${item.product.description}</td>
              <td>
                <form action="cart" method="post" class="Butt_Act">
                  <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                  <input type="hidden" name="flag_act" value=1>
                  <input type="submit" value="&#10133;">
                </form>
                <div>${item.quantity}</div>
                <form action="cart" method="post" class="Butt_Act">
                  <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                  <input type="hidden" name="flag_act" value=0>
                  <input type="submit" value="&#10134;">
                </form>
              </td>
              <td>${item.product.priceCurrencyFormat}</td>
              <td>${item.totalCurrencyFormat}</td>
              <td>
                <form action="cart" method="post" class="Butt_Act">
                  <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                  <input type="hidden" name="flag_act" value=-1>
                  <input id="XBUTT" type="submit" value="&#10060;">
                </form>
                <!-- REWRITING URL WAY -->
                <!-- <a href="cart?productCode=${item.product.code}&amp;quantity=0">Remove Item</a> -->
              </td>
            </tr>
          </c:forEach>
        </tbody>

    </table>
    <div class="BUTT_GROUP">
      <form action="cart" method="post" class="Butt">
        <input type="hidden" name="action" value="return">
        <input class="BUTT" type="submit" value="Continue Shopping">
      </form>

      <form action="cart" method="post" class="Butt">
        <input type="hidden" name="action" value="checkout">
        <input class="BUTT" type="submit" value="Checkout">
      </form>
    </div>
  </div>
  <a href="/"> <button class="Back_BUTT"> Back to home website </button> </a>
</body>

</html>