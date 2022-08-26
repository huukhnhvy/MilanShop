<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/8/2021
  Time: 4:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MILAN - Thời trang hiện đại</title>
</head>
<body>
<!-- Start Contact Area -->
<section class="htc__contact__area ptb--100 bg__white" style="padding-top: 30px;">
    <div class="container">
        <div class="row">
            <h2 class="title__line--6">CONTACT US</h2>
            <div class="address">
                <div class="address__icon">
                    <i class="icon-location-pin icons"></i>
                </div>
                <div class="address__details">
                    <h2 class="ct__title">our address</h2>
                    <p>01 Vo Van Ngan,Ho Chi Minh City,Viet Nam </p>
                </div>
            </div>
            <div class="address">
                <div class="address__icon">
                    <i class="icon-envelope icons"></i>
                </div>
                <div class="address__details">
                    <h2 class="ct__title">openning hour</h2>
                    <p>7AM - 9PM </p>
                </div>
            </div>

            <div class="address">
                <div class="address__icon">
                    <i class="icon-phone icons"></i>
                </div>
                <div class="address__details">
                    <h2 class="ct__title">Phone Number</h2>
                    <p>0961516234</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="contact-form-wrap mt--60">
                <div class="col-xs-12">
                    <div class="contact-title">
                        <h2 class="title__line--6">SEND A MAIL</h2>
                    </div>
                </div>
                <div class="col-xs-12">
                    <form id="contact-form" action="#" method="post">
                        <div class="single-contact-form">
                            <div class="contact-box name">
                                <input type="text" name="name" placeholder="Your Name*">
                                <input type="email" name="email" placeholder="Mail*">
                            </div>
                        </div>
                        <div class="single-contact-form">
                            <div class="contact-box subject">
                                <input type="text" name="subject" placeholder="Subject*">
                            </div>
                        </div>
                        <div class="single-contact-form">
                            <div class="contact-box message">
                                <textarea name="message" placeholder="Your Message"></textarea>
                            </div>
                        </div>
                        <div class="contact-btn">
                            <button type="submit" class="fv-btn">Send MESSAGE</button>
                        </div>
                    </form>
                    <div class="form-output">
                        <p class="form-messege"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Contact Area -->
</body>
</html>
