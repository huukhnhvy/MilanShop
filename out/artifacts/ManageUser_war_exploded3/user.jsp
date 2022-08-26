<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/10/2021
  Time: 3:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Matrix Admin Lite Free Versions Template by WrapPixel</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="templates/assets/images/favicon.png"/>"/>
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="templates/assets/extra-libs/multicheck/multicheck.css"/>">
    <!-- <link href="../assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet"/> -->
    <link type="text/css" href="<c:url value="templates/dist/css/style.min.css"/> " rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link href="<c:url value="templates/dist/css/manage.css"/>" rel="stylesheet" />
    <link href="<c:url value="templates/dist/css/manager.css"/>" rel="stylesheet" />
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
    <!-- Topbar header - style you can find in pages.scss -->
    <header class="topbar" data-navbarbg="skin5">
        <nav class="navbar top-navbar navbar-expand-md navbar-dark">
            <div class="navbar-header" data-logobg="skin5">
                <!-- Logo -->
                <a class="navbar-brand" href="">
                    <!-- Logo icon -->
                    <b class="logo-icon ps-2">
                        <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                        <!-- Dark Logo icon -->
                        <img
                                src="<c:url value="templates/assets/images/logo-icon.png"/>"
                                alt="homepage"
                                class="light-logo"
                                width="25"
                        />
                    </b>
                    <!--End Logo icon -->
                    <!-- Logo text -->
                    <span class="logo-text ms-2">
                <!-- dark Logo text -->
                <img
                        src="<c:url value="templates/assets/images/logo-text.png"/>"
                        alt="homepage"
                        class="light-logo"
                />
              </span>
                </a>
                <!-- End Logo -->
            </div>
            <!-- End Logo -->
            <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                <!-- toggle and nav items -->
                <ul class="navbar-nav float-start me-auto">
                    <li class="nav-item d-none d-lg-block">
                        <a
                                class="nav-link sidebartoggler waves-effect waves-light"
                                href="javascript:void(0)"
                                data-sidebartype="mini-sidebar"
                        ><i class="mdi mdi-menu font-24"></i
                        ></a>
                    </li>
                    <!-- Search -->
                    <li class="nav-item search-box">
                        <a class="nav-link waves-effect waves-dark" href="javascript:void(0)">
                            <i class="mdi mdi-magnify fs-4"></i></a>
                        <form class="app-search position-absolute">
                            <input type="text" class="form-control" placeholder="Search &amp; enter"/>
                            <a class="srh-btn"><i class="mdi mdi-window-close"></i></a>
                        </form>
                    </li>
                </ul>
                <!-- Right side toggle and nav items -->
                <ul class="navbar-nav float-end">
                    <!-- User profile and search -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic"
                           href="#"
                           id="navbarDropdown"
                           role="button"
                           data-bs-toggle="dropdown"
                           aria-expanded="false"
                        >
                            <img src="<c:url value="templates/assets/images/users/1.jpg"/>" alt="user" class="rounded-circle" width="31"/>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end user-dd animated"
                            aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="javascript:void(0)"
                            ><i class="mdi mdi-account me-1 ms-1"></i> My Profile</a>
                            <a class="dropdown-item" href="javascript:void(0)">
                                <i class="mdi mdi-wallet me-1 ms-1"></i> My Balance</a>
                            <a class="dropdown-item" href="javascript:void(0)">
                                <i class="mdi mdi-email me-1 ms-1"></i> Inbox</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="javascript:void(0)">
                                <i class="mdi mdi-settings me-1 ms-1"></i> Account Setting</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="javascript:void(0)">
                                <i class="fa fa-power-off me-1 ms-1"></i> Logout</a>
                            <div class="dropdown-divider"></div>
                            <div class="ps-4 p-10">
                                <a href="javascript:void(0)" class="btn btn-sm btn-success btn-rounded text-white">View Profile</a>
                            </div>
                        </ul>
                    </li>
                    <!-- User profile and search -->
                </ul>
            </div>
        </nav>
    </header>
    <!-- End Topbar header -->
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <aside class="left-sidebar" data-sidebarbg="skin5">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
            <!-- Sidebar navigation-->
            <nav class="sidebar-nav">
                <ul id="sidebarnav" class="pt-4">
                    <li class="sidebar-item">
                        <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/hello-servlet" aria-expanded="false">
                            <i class="mdi mdi-view-dashboard"></i>
                            <span class="hide-menu">Dashboard</span></a>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                            <i class="mdi mdi-border-inside"></i>
                            <span class="hide-menu">Tables</span></a>
                        <ul aria-expanded="false" class="collapse first-level">
                            <li class="sidebar-item">
                                <a href="/user" class="sidebar-link">
                                    <i class="mdi mdi-note-outline"></i>
                                    <span class="hide-menu">Manage User</span></a>
                            </li>
                            <li class="sidebar-item">
                                <a href="/user" class="sidebar-link">
                                    <i class="mdi mdi-note-plus"></i>
                                    <span class="hide-menu">Manage Product</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                            <i class="mdi mdi-receipt"></i>
                            <span class="hide-menu">Forms </span></a>
                        <ul aria-expanded="false" class="collapse first-level">
                            <li class="sidebar-item">
                                <a href="/hello-servlet" class="sidebar-link">
                                    <i class="mdi mdi-note-outline"></i>
                                    <span class="hide-menu"> Form Basic </span></a>
                            </li>
                            <li class="sidebar-item">
                                <a href="/hello-servlet" class="sidebar-link">
                                    <i class="mdi mdi-note-plus"></i>
                                    <span class="hide-menu"> Form Wizard </span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                            <i class="mdi mdi-account-key"></i>
                            <span class="hide-menu">Authentication </span></a>
                        <ul aria-expanded="false" class="collapse first-level">
                            <li class="sidebar-item">
                                <a href="/hello-servlet" class="sidebar-link">
                                    <i class="mdi mdi-all-inclusive"></i>
                                    <span class="hide-menu"> Login </span></a>
                            </li>
                            <li class="sidebar-item">
                                <a href="/hello-servlet" class="sidebar-link">
                                    <i class="mdi mdi-all-inclusive"></i>
                                    <span class="hide-menu"> Register </span></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
    </aside>
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- Page wrapper  -->
    <div class="page-wrapper">
        <!-- Bread crumb and right sidebar toggle -->
        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-12 d-flex no-block align-items-center">
                    <h4 class="page-title">Tables</h4>
                    <div class="ms-auto text-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Library
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-12 d-flex no-block align-items-center">
                    <a href="#addEmployeeModal" class="btn btn-outline-primary" data-toggle="modal" >Add New User</a>
                </div>
            </div>
        </div>
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- Container fluid  -->
        <div class="container-fluid">
            <!-- Start Page Content -->
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title mb-0">Static Table</h5>
                        </div>
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">User ID</th>
                                <th scope="col">Fullname</th>
                                <th scope="col">Email</th>
                                <th scope="col">Password</th>
                                <th scope="col">Role</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="item" items="${listUser}">
                            <tr>
                                <th scope="row">${item.userId}</th>
                                <td>${item.fullName}</td>
                                <td>${item.email}</td>
                                <td>${item.password}</td>
                                <td>${item.admin}</td>
                                <td><ul style="list-style-type: none; padding-left: 0;">
                                    <li style="float: left; "><a href="">Edit</a></li>
                                    <li style="float: left; margin-left: 5px;"><a href="delete?uid=${item.userId}">Delete</a></li>
                                </ul></td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- End Container fluid  -->
                <!-- Edit Modal HTML -->
                <div id="addEmployeeModal" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="AddControl" method="post">
                                <div class="modal-header">
                                    <h4 class="modal-title">Add Product</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label>UserId</label>
                                        <input name="userId" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Username</label>
                                        <input name="username" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input name="email" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input name="password" type="password" class="form-control" required></input>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 control-label" style="padding-right: 0">Role</label>
                                        <div class="col-md-9" style="padding-left: 0" >
                                            <div class="form-check form-check-inline">
                                                <input type="radio" class="form-check-input" id="admin"
                                                       name="admin" value="true" ${user.admin? 'checked':'' }  required/>
                                                <label class="form-check-label mb-0">Admin</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input type="radio" class="form-check-input" id="user"
                                                       name="admin" value="false" ${! user.admin? 'checked':'' } required/>
                                                <label class="form-check-label mb-0" >User</label>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                    <input type="submit" class="btn btn-success" value="Add">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- footer -->
                <footer class="footer text-center">
                </footer>
                <!-- End footer -->
            </div>
            <!-- End Page wrapper  -->
        </div>
        <!-- End Wrapper -->
    </div>
</div>
        <!-- All Jquery -->
        <script type="text/javascript" src="<c:url value="templates/assets/libs/jquery/dist/jquery.min.js"/>"></script>
        <!-- Bootstrap tether Core JavaScript -->
        <script type="text/javascript" src="<c:url value="templates/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"/>"></script>
        <!-- slimscrollbar scrollbar JavaScript -->
        <script type="text/javascript" src="<c:url value="templates/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="templates/assets/extra-libs/sparkline/sparkline.js"/>"></script>
        <!--Wave Effects -->
        <script type="text/javascript" src="<c:url value="templates/dist/js/waves.js"/>"></script>
        <!--Menu sidebar -->
        <script type="text/javascript" src="<c:url value="templates/dist/js/sidebarmenu.js"/>"></script>
        <!--Custom JavaScript -->
        <script type="text/javascript" src="<c:url value="templates/dist/js/custom.min.js"/>"></script>
        <!-- this page js -->
        <script type="text/javascript" src="<c:url value="templates/assets/extra-libs/multicheck/datatable-checkbox-init.js"/>"></script>
        <script type="text/javascript" src="<c:url value="templates/assets/extra-libs/multicheck/jquery.multicheck.js"/>"></script>
        <script src="<c:url value="templates/dist/js/manager.js"/>" type="text/javascript"></script>
</body>
</html>