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
                                    <form action="#">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="single-input">
                                                    <input type="text" placeholder="First name">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="single-input">
                                                    <input type="text" placeholder="Last name">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-input">
                                                    <input type="text" placeholder="Company name">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-input">
                                                    <input type="text" placeholder="Street Address">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-input">
                                                    <input type="text" placeholder="City">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-input">
                                                    <input type="email" placeholder="Email address">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-input">
                                                    <input type="text" placeholder="Phone number">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="contact-btn">
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
                        <div class="single-item">
                            <div class="single-item__thumb">
                                <img src="<c:url value="/template/web/img/img4.jpg"/>" alt="ordered item">
                            </div>
                            <div class="single-item__content">
                                <a href="">Santa fe jacket for men</a>
                                <span class="price">$128</span>
                            </div>
                            <div class="single-item__remove">
                                <a href="#"><i class="zmdi zmdi-delete"></i></a>
                            </div>
                        </div>
                        <div class="single-item">
                            <div class="single-item__thumb">
                                <img src="<c:url value="/template/web/img/img4.jpg"/>" alt="ordered item">
                            </div>
                            <div class="single-item__content">
                                <a href="">Santa fe jacket for men</a>
                                <span class="price">$128</span>
                            </div>
                            <div class="single-item__remove">
                                <a href="#"><i class="zmdi zmdi-delete"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="order-details__count">
                        <div class="order-details__count__single">
                            <h5>sub total</h5>
                            <span class="price">$909.00</span>
                        </div>
                        <div class="order-details__count__single">
                            <h5>Shipping</h5>
                            <span class="price">0</span>
                        </div>
                    </div>
                    <div class="ordre-details__total">
                        <h5>Order total</h5>
                        <span class="price">$918.00</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- cart-main-area end -->
</body>
</html>
