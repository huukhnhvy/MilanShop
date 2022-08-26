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
                <h4 class="page-title">Edit Category</h4>
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

    <div class="container-fluid" style="text-align: center">
        <!-- Start Page Content -->
        <div class="row" style="display: inline-block; width: 600px">
            <div class="col-md-12">
                <div class="card">
                    <form action="${pageContext.request.contextPath}/admin-category" method="post" class="form-horizontal">
                        <div class="card-body">
                            <h4 class="card-title">Category Information</h4>
                            <div class="form-group row">
                                <label for="id" class="col-sm-3 text-end control-label col-form-label">CategoryID</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="id" id="id" readonly value="${category.id}"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="code" class="col-sm-3 text-end control-label col-form-label">Code</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="code" id="code" value="${category.code}"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="name" class="col-sm-3 text-end control-label col-form-label">Name</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="name" id="name" value="${category.name}"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="name" class="col-sm-3 text-end control-label col-form-label">Description</label>
                                <div class="col-sm-9">
                                    <textarea name="description" class="form-control">${category.description}</textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 text-end control-label col-form-label">Outfit</label>
                                <div class="col-md-9" style="margin-top: 7px">
                                    <select class="form-control" id="outfit" name="pkId">
                                        <option value="">Chọn loại sản phẩm</option>
                                        <c:forEach var="item" items="${outfit}">
                                            <option value="${item.id}" <c:if test="${item.id == category.outfit.id}">selected="selected"</c:if>>
                                                    ${item.name}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="border-top">
                                <div class="card-body" style="margin-right: 1000px">
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
