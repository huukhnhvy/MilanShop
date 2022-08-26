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
                <h4 class="page-title">Edit Product Details</h4>
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
                    <form action="${pageContext.request.contextPath}/admin-outfit" method="post" class="form-horizontal">
                        <div class="card-body">
                            <h4 class="card-title">Product Detail</h4>
                            <div class="form-group row">
                                <label class="col-sm-3 text-end control-label col-form-label">ID</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="id" id="id" readonly value="${pDetail.id}"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="code" class="col-sm-3 text-end control-label col-form-label">Sub Image</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="subPic" id="code" value="${pDetail.subPic}"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="name" class="col-sm-3 text-end control-label col-form-label">Product</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="pkId" id="name" value="${pDetail.product.id}"/>
                                </div>
                            </div>
                            <div class="border-top">
                                <div class="card-body">
                                    <input type="hidden" value="edit" name="action">
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
