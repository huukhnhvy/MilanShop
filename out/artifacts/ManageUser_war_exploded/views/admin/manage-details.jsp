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
                <h4 class="page-title">Product Details Management</h4>
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
    <div class="page-breadcrumb" >
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center" style="width: 200px">
                <a href="#addEmployeeModal" class="btn btn-outline-primary" data-toggle="modal" >Add New</a>
            </div>
            <div class="col-md-4 col-md-offset-3" style="margin-left: auto;">
                <form action="${pageContext.request.contextPath}/admin-outfit" method="post" class="search-form">
                    <div class="form-group has-feedback">
                        <label for="search" class="sr-only">Search</label>
                        <input type="hidden" name="action" value="search">
                        <input type="text" class="form-control" name="txt" value="${txt}" id="search" placeholder="search">
                        <span class="glyphicon glyphicon-search form-control-feedback"></span>
                    </div>
                </form>
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
                    <form action="<c:url value="/admin-outfit"/>" id="formSubmit" method="get">
                    <div class="card-body">
                    </div>
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Image</th>
                            <th scope="col">Product</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="item" items="${listPD}">
                            <tr>
                                <th scope="row">${item.id}</th>
                                <td class="product-thumbnail"><a href=""><img height="200px"
                                                                              src="<c:url value="${item.subPic}"/>" alt="product img" /></a>
                                </td>
                                <td>${item.product.name}</td>
                                <td><ul style="list-style-type: none; padding-left: 0;">

                                            <c:url var="edit" value="/admin-edit-outfit">
                                                <c:param name="action" value="load"/>
                                                <c:param name="id" value="${item.id}"/>
                                            </c:url>
                                            <a href="${edit}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                            <c:url var="delete" value="/admin-outfit">
                                                <c:param name="action" value="delete"/>
                                                <c:param name="id" value="${item.id}"/>
                                            </c:url>
                                            <a href="${delete}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </ul>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                        <input type="hidden" value="" id="page" name="page">
                        <input type="hidden" value="" id="maxPageItem" name="maxPageItem">
                    </form>
                </div>
            </div>

            <!-- End Container fluid  -->
            <!-- Add Modal HTML -->
            <div id="addEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="${pageContext.request.contextPath}/admin-outfit" method="post">
                            <div class="modal-header" style="display: block">
                                <h4 class="modal-title">Add</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Image</label>
                                    <input name="subPic" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Product</label>
                                    <input name="pkId" type="text" class="form-control" required>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="hidden" value="add" name="action">
                                <input type="submit" class="btn btn-success" value="Add">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="container">
                <nav aria-label="Page navigation">
                    <ul class="pagination" id="pagination"></ul>
                </nav>
            </div>
            <script type="text/javascript">
                var currentPage = ${model.page};
                var totalPages = ${model.totalPage};
                var limit = 5;
                $(function () {
                    window.pagObj = $('#pagination').twbsPagination({
                        totalPages: totalPages,
                        visiblePages: 5,
                        startPage: currentPage,
                        first: false,
                        last: false,
                        onPageClick: function (event, page) {
                            if(currentPage != page){
                                $('#maxPageItem').val(limit);
                                $('#page').val(page);
                                $('#formSubmit').submit();
                            }
                        }
                    });
                });
            </script>
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
