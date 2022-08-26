<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/15/2021
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Page wrapper  -->
<div class="page-wrapper">
    <!-- Bread crumb and right sidebar toggle -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h4 class="page-title">Form</h4>
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
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- Container fluid  -->

    <div class="container-fluid">
        <!-- Start Page Content -->
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <form action="${pageContext.request.contextPath}/admin-edit" method="post" class="form-horizontal">
                        <div class="card-body">
                            <h4 class="card-title">Personal Info</h4>
                            <div class="form-group row">
                                <label for="userId" class="col-sm-3 text-end control-label col-form-label">UserID</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="userId" id="userId" readonly value="${user.userId}"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="username" class="col-sm-3 text-end control-label col-form-label">Usrename</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="username" id="username" value="${user.fullName}"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="email" class="col-sm-3 text-end control-label col-form-label">Email</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="email" id="email" value="${user.email}"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="password" class="col-sm-3 text-end control-label col-form-label">Password</label>
                                <div class="col-sm-9">
                                    <input type="password" class="form-control" name="password" id="password" value="${user.password}"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 text-end control-label col-form-label">Role</label>
                                <div class="col-md-9" style="margin-top: 7px">
                                    <div class="form-check form-check-inline">
                                        <input type="radio" class="form-check-input" id="admin"
                                               name="admin" value="true" ${user.admin? 'checked':'' } required/>
                                        <label class="form-check-label mb-0">Admin</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input type="radio" class="form-check-input" id="user"
                                               name="admin" value="false" ${! user.admin? 'checked':'' } required/>
                                        <label class="form-check-label mb-0" >User</label>
                                    </div>
                                </div>
                            </div>
                            <div class="border-top">
                                <div class="card-body">
                                    <input type="submit" class="btn btn-success" value="Edit">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- footer -->
        <footer class="footer text-center">
        </footer>
        <!-- End footer -->
    </div>
    <!-- End Page wrapper  -->
</div>
<!-- End Wrapper -->
</div>
</body>
</html>
