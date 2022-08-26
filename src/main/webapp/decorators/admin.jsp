<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/6/2021
  Time: 4:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="keywords" content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Matrix lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Matrix admin lite design, Matrix admin lite dashboard bootstrap 5 dashboard template"/>
    <meta name="description" content="Matrix Admin Lite Free Version is powerful and clean admin dashboard template, inpired from Bootstrap Framework"/>
    <meta name="robots" content="noindex,nofollow" />
    <title><dec:title default="Milan Shop"/></title>
    <!-- Favicon icon -->
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/template/web/img/favicon.ico"/>">
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/template/admin/assets/extra-libs/multicheck/multicheck.css"/>">
    <!-- <link href="../assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet"/> -->
    <link type="text/css" href="<c:url value="/template/admin/dist/css/style.min.css"/> " rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="<c:url value="/template/admin/dist/css/manage.css"/>" rel="stylesheet" />
    <link href="<c:url value="/template/admin/dist/css/manager.css"/>" rel="stylesheet" />
<%--    <link href="<c:url value="/template/admin/assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css"/>" rel="stylesheet"/>--%>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>--%>
    <link href="<c:url value="/template/admin/dist/css/search.css"/>" rel="stylesheet" />
    <script src="<c:url value="/template/admin/dist/js/jquery.twbsPagination.js"/>" type="text/javascript"></script>
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">--%>
<%--    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>--%>
<%--    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>--%>
</head>
<body>
<!-- Preloader - style you can find in spinners.css -->
<div class="preloader">
    <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
    </div>
</div>
<!-- Main wrapper - style you can find in pages.scss -->
<div
        id="main-wrapper"
        data-layout="vertical"
        data-navbarbg="skin5"
        data-sidebartype="full"
        data-sidebar-position="absolute"
        data-header-position="absolute"
        data-boxed-layout="full"
>
    <!-- header -->
    <%@ include file="/common/admin/header.jsp"%>
    <!-- header -->
    <!-- sidebar -->
    <%@ include file="/common/admin/sidebar.jsp"%>
    <!-- sidebar -->
    <!-- body -->
    <dec:body/>
    <!-- body -->
</div>
<!-- All Jquery -->
<%--<script type="text/javascript" src="<c:url value="/template/admin/assets/libs/jquery/dist/jquery.min.js"/>"></script>--%>
<!-- Bootstrap tether Core JavaScript -->
<script type="text/javascript" src="<c:url value="/template/admin/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"/>"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script type="text/javascript" src="<c:url value="/template/admin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/template/admin/assets/extra-libs/sparkline/sparkline.js"/>"></script>
<!--Wave Effects -->
<script type="text/javascript" src="<c:url value="/template/admin/dist/js/waves.js"/>"></script>
<!--Menu sidebar -->
<script type="text/javascript" src="<c:url value="/template/admin/dist/js/sidebarmenu.js"/>"></script>
<!--Custom JavaScript -->
<script type="text/javascript" src="<c:url value="/template/admin/dist/js/custom.min.js"/>"></script>
<!-- this page js -->
<script type="text/javascript" src="<c:url value="/template/admin/assets/extra-libs/multicheck/datatable-checkbox-init.js"/>"></script>
<script type="text/javascript" src="<c:url value="/template/admin/assets/extra-libs/multicheck/jquery.multicheck.js"/>"></script>
<script src="<c:url value="/template/admin/dist/js/manager.js"/>" type="text/javascript"></script>
<%--<script src="<c:url value="/template/admin/assets/extra-libs/DataTables/datatables.min.js"/>"></script>--%>
</body>
