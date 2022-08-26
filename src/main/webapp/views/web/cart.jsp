<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/8/2021
  Time: 5:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MILAN - Thời trang hiện đại</title>
</head>
<body>
<!-- cart-main-area start -->
<div class="cart-main-area ptb--100 bg__white" style="padding-top: 30px;">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <form action="#">
          <div class="table-content table-responsive">
            <table>
              <thead>
              <tr>
                <th class="product-thumbnail">products</th>
                <th class="product-name">name of products</th>
                <th class="product-price">Price</th>
                <th class="product-quantity">Quantity</th>
                <th class="product-subtotal">Total</th>
                <th class="product-remove">Delete</th>
              </tr>
              </thead>
              <tbody>
              <c:set var="total" value="0"></c:set>
              <c:forEach var="item" items="${cart.items}">
                <c:set var="total" value="${total + item.product.price * item.quantity}"></c:set>
              <tr>
                <td class="product-thumbnail"><a href=""><img
                        src="<c:url value="${item.product.picture}"/>" alt="product img" /></a>
                </td>
                <td class="product-name"><a href="">${item.product.name}</a>
                </td>
                <td class="product-price"><span class="amount">$${item.product.price}</span></td>
                <td class="product-quantity">
                <form action="/cart" method="post">
                  <input type="hidden" name="productId" value="${item.product.id}">
                  <input type="hidden" name="action" value="cart">
                    <input aria-label="quantity" class="input-qty" max="${item.product.quantity}" min="1" name="quantity" type="number" value="${item.quantity}">
                  <button type="submit" class="btn" style="padding: 5px;background: #FFFFFF"><i style="color: black" class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>
                </form>
                </td>
                <td class="product-subtotal">${item.totalCurrencyFormat}</td>
                <td class="product-remove">
                    <c:url var="remove" value="/cart">
                        <c:param name="action" value="delete"/>
                        <c:param name="productId" value="${item.product.id}"/>
                    </c:url>
                  <a href="${remove}"><i
                        class="icon-trash icons"></i></a>
                </td>
              </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
          <div class="row">
            <div class="col-md-14 col-sm-12 col-xs-12 smt-40 xmt-40">
              <div class="htc__cart__total">
                <h6>cart total</h6>
                <div class="cart__desk__list">
                  <ul class="cart__desc">
                    <li>cart total</li>
                    <li>shipping</li>
                  </ul>
                  <ul class="cart__price">
                    <li>$${total}</li>
                    <li>Free Ship</li>
                  </ul>
                </div>
                <div class="cart__total">
                  <span>order total</span>
                  <span>$${total}</span>
                </div>
                <ul class="payment__btn">
                  <c:url var="checkout" value="/checkout">
                    <c:param name="action" value="checkout"/>
                    <c:param name="total" value="${total}"/>
                  </c:url>
                  <li class="active"><a href="${checkout}">Checkout</a></li>
                  <li><a href="${pageContext.request.contextPath}/home">continue shopping</a></li>
                </ul>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- cart-main-area end -->
</body>
</html>
