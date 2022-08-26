<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/8/2021
  Time: 4:43 PM
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
<div class="checkout-wrap ptb--100" style="padding-top: 30px;">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="checkout__inner">
                    <div class="accordion-list">
                        <div class="accordion">
                            <div class="accordion__title">Information
                            </div>
                            <div class="accordion__body">
                                <div class="bilinfo">
                                    <form action="<c:url value="/cart"/>" method="post">
                                        <c:if test="${not empty message}">
                                            <div class="alert alert-${alert}">
                                                    ${message}
                                            </div>
                                        </c:if>
                                        <div class="row">
                                            <c:if test="${not empty USER}">
                                            <div class="col-md-12">
                                                <div class="single-input">
                                                    <input name="fullname" value="${USER.fullname}" type="text" placeholder="Full name">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-input">
                                                    <input name="email" value="${USER.email}" type="email" placeholder="Email address">
                                                </div>
                                            </div>
                                            </c:if>
                                            <c:if test="${empty USER}">
                                                <div class="col-md-12">
                                                    <div class="single-input">
                                                        <input name="fullname" value="" type="text" placeholder="Full name">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="single-input">
                                                        <input name="email" value="" type="email" placeholder="Email address">
                                                    </div>
                                                </div>
                                            </c:if>
                                            <div class="col-md-12">
                                                <div class="single-input">
                                                    <input name="address" type="text" placeholder="Company name">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-input">
                                                    <input name="street" type="text" placeholder="Street Address">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-input">
                                                    <input name="city" type="text" placeholder="City">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-input">
                                                    <input name="phone" type="text" placeholder="Phone number">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="contact-btn">
                                                    <input type="hidden" value="${cart.items}" name="cart">
                                                    <input type="hidden" value="${total}" name="total">
                                                    <input type="hidden" value="checkout" name="action">
                                                    <button type="submit" class="fv-btn">Confirm
                                                        Order</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="order-details">
                    <h5 class="order-details__title">Your Order</h5>
                    <div class="order-details__item">
                    <c:forEach var="item" items="${cart.items}">
                        <div class="single-item">
                            <div class="single-item__thumb">
                                <img src="<c:url value="${item.product.picture}"/>" alt="ordered item">
                            </div>
                            <div class="single-item__content">
                                <a href="">${item.product.name}</a>
                                <span class="price">${item.totalCurrencyFormat}</span>
                                <span class="product-quantity">x ${item.quantity}</span>
                            </div>
                            <div class="single-item__remove">
                                <c:url var="remove" value="/cart">
                                    <c:param name="action" value="remove"/>
                                    <c:param name="productId" value="${item.product.id}"/>
                                </c:url>
                                <a href="${remove}"><i class="zmdi zmdi-delete"></i></a>
                            </div>
                        </div>
                    </c:forEach>
                    </div>
                    <div class="ordre-details__total">
                        <h5>Order total</h5>
                        <span class="price">$${total}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- cart-main-area end -->
</body>
</html>
