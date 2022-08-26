<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/6/2021
  Time: 3:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Trang chủ</title>
</head>
<body>
<!-- Slider -->
<div class="content section" style="max-width:1600px;margin: 0 auto;">
    <img class="mySlides" src="<c:url value="/template/web/img/banner1.jpg"/>" style="width:100%">
    <img class="mySlides" src="<c:url value="/template/web/img/banner6.jpg"/>" style="width:100%">
    <img class="mySlides" src="<c:url value="/template/web/img/banner3.jpg"/>" style="width:100%">
    <img class="mySlides" src="<c:url value="/template/web/img/banner4.jpg"/>" style="width:100%">
    <img class="mySlides" src="<c:url value="/template/web/img/banner7.jpg"/>" style="width:100%">
</div>
<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) { myIndex = 1 }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 2000); // Change image every 2 seconds
    }
</script>
<!-- End Slider -->
<!-- Start Category Area -->
<section class="htc__category__area ptb--100">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section__title--2 text-center">
                    <h2 class="title__line">New Arrivals</h2>
                    <p>The best look anytime anywhere</p>
                </div>
            </div>
        </div>
        <div class="htc__product__container">
            <div class="row">
                <div class="product__list clearfix mt--30">
                <c:forEach var="item" items="${listProduct}">
                    <!-- Start Single Category -->
                    <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                        <div class="category">
                            <div class="ht__cat__thumb">
                                <a href="${pageContext.request.contextPath}/product-detail?pid=${item.id}">
                                    <img src="<c:url value="${item.picture}"/>" alt="product images">
                                </a>
                            </div>
                            <div class="fr__hover__info">
                                <ul class="product__action">
                                    <c:url value="/cart" var="cartHome">
                                        <c:param name="action" value="cart"/>
                                        <c:param name="productId" value="${item.id}"/>
                                    </c:url>
                                    <li><a href="${cartHome}"><i class="icon-handbag icons"></i></a></li>
                                </ul>
                            </div>
                            <div class="fr__product__inner">
                                <h4><a href="${pageContext.request.contextPath}/product-detail?pid=${item.id}">${item.name}</a></h4>
                                <ul class="fr__pro__prize">
                                    <li >$${item.price}</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Category -->
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Category Area -->

<!-- Start Sub Banner -->
<div class="row">
    <div class="cms_banner mt_50">
        <div class="col-sm-12 mt_10">
            <div id="subbanner3" class="sub-hover">
                <div class="sub-img"><img src="<c:url value="/template/web/img/banner2.jpg"/>" alt="Sub Banner3" class="img-responsive"
                                          style="margin:0px auto;max-width:1300px"></div>
            </div>
        </div>
    </div>
</div>
<!--End Sub Banner -->

<!-- Start Product Area -->
<section class="ftr__product__area ptb--100">
    <div class="container">

    </div>
</section>
<!-- End Product Area -->
</body>
</html>
