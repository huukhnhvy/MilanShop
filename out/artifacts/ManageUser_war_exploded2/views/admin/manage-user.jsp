<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/15/2021
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MiLan Shop</title>
</head>
<body>
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
                                    <form action="${pageContext.request.contextPath}/admin-load" method="post">
                                        <input type="hidden" name="userId" value="${item.userId}">
                                        <button class="btn" style="padding: 0 0;"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>
                                    </form>
                                    <form action="admin-delete" method="post">
                                        <input type="hidden" name="userId" value="${item.userId}">
                                        <button class="btn" style="padding: 0 0;"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></button>
                                    </form>
                                </ul>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- End Container fluid  -->
            <!-- Add Modal HTML -->
            <div id="addEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="${pageContext.request.contextPath}/admin-add" method="post">
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
                                    <input name="email" type="email" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input name="password" type="password" class="form-control" required></input>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 control-label" style="padding-right: 0">Role</label>
                                    <div class="col-md-9" style="padding-left: 0" >
                                        <div class="form-check form-check-inline">
                                            <input type="radio" class="form-check-input"
                                                   name="admin" value="true"   required/>
                                            <label class="form-check-label mb-0">Admin</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input type="radio" class="form-check-input"
                                                   name="admin" value="false"  required/>
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
</body>
</html>
