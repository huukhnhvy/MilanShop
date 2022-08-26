<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/6/2021
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Logo -->
        <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/template/web/img/favicon.ico"/>">
        <title><dec:title default="Trang chủ"/></title>
        <!-- css files -->
        <link type="text/css" rel="stylesheet" href="<c:url value="/template/web/css/bootstrap.min.css"/>">
        <!-- Owl Carousel min css -->
        <link rel="stylesheet" href="<c:url value="/template/web/css/owl.carousel.min.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/template/web/css/owl.theme.default.min.css"/>" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" type="text/css">
        <!-- This core.css file contents all plugings css file. -->
        <link rel="stylesheet" href="<c:url value="/template/web/css/core.css"/>" type="text/css">
        <!-- Theme parts/elements style -->
        <link rel="stylesheet" href="<c:url value="/template/web/css/part/part.css"/>" type="text/css">
        <!-- Theme main style -->
        <link rel="stylesheet" href="<c:url value="/template/web/style.css"/>" type="text/css">
        <!-- Responsive css -->
        <link rel="stylesheet" href="<c:url value="/template/web/css/responsive.css"/>" type="text/css">
        <!-- User style -->
        <link rel="stylesheet" href="<c:url value="/template/web/css/custom.css"/>" type="text/css">

        <!-- Modernizr JS -->
        <script type="text/javascript" src="<c:url value="/template/web/js/vendor/modernizr-3.5.0.min.js"/>"></script>
    </head>
</head>
<body>
<div class="wrapper">
    <!-- header -->
    <%@ include file="/common/web/header.jsp"%>
    <!-- header -->

    <!-- wrapper -->
    <%@ include file="/common/web/wrapper.jsp"%>
    <!-- wrapper -->

        <dec:body/>

    <!-- footer -->
    <%@ include file="/common/web/footer.jsp"%>
    <!-- footer -->
</div>
    <!-- jquery latest version -->
    <script type="text/javascript" src="<c:url value="/template/web/js/vendor/jquery-3.2.1.min.js"/>"></script>
    <!-- Bootstrap framework js -->
    <script src="<c:url value="/template/web/js/bootstrap.min.js"/>"></script>
    <!-- All js plugins included in this file. -->
    <script type="text/javascript" src="<c:url value="/template/web/js/plugins.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/template/web/js/slick.min.js"/>"></script></script>
    <script type="text/javascript" src="<c:url value="/template/web/js/owl.carousel.min.js"/>"></script>
    <!-- Waypoints.min.js. -->
    <script type="text/javascript" src="<c:url value="/template/web/js/waypoints.min.js"/>"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script type="text/javascript" src="<c:url value="/template/web/js/main.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/template/web/js/jquery.magnific-popup.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/template/web/js/custom.js"/>"></script>
</body>
</html>
