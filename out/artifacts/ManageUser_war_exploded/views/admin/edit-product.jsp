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

    <div class="container-fluid">
        <!-- Start Page Content -->
    <form action="" method="post" class="form-horizontal">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Form Elements</h5>
                <div class="form-group row" style="float: left; width: 50%;">
                    <label class="col-md-2">Product ID</label>
                    <div class="col-md-9">
                        <input type="text" name="id" id="id" value="${product.id}" class="form-control" readonly/>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-2">Code</label>
                    <div class="col-md-9">
                        <input type="text" name="code" id="code" value="${product.code}" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row" style="float: left; width: 50%;">
                    <label class="col-md-2">Name</label>
                    <div class="col-md-9">
                        <input type="text" name="name" id="name" value="${product.name}" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-2">Category</label>
                    <div class="col-md-9">
                        <select class="form-control" id="category" name="pkId">
                            <option value="">Chọn loại sản phẩm</option>
                            <c:forEach var="item" items="${category}">
                                <option value="${item.id}" <c:if test="${item.id == product.category.id}">selected="selected"</c:if>>
                                        ${item.name}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-group row" style="float: left; width: 50%;">
                    <label class="col-md-2">Price</label>
                    <div class="col-md-9">
                        <input type="text" name="price" id="price" value="${product.price}" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row" >
                    <label class="col-md-2">Discount</label>
                    <div class="col-md-9">
                        <input type="text" name="sale" id="sale" value="${product.sale}" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row" style="float: left; width: 50%;">
                    <label class="col-md-2">Content</label>
                    <div class="col-md-9">
                      <textarea type="text" name="shortdescrip" id="content" class="form-control">${product.shortdescrip}</textarea>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-2">Description</label>
                    <div class="col-md-9">
                      <textarea type="text" name="description" id="description" class="form-control">${product.description}</textarea>
                    </div>
                </div>
                <div class="form-group row" style="float: left; width: 50%;">
                    <label class="col-md-2">Image</label>
                    <div class="col-md-9">
                        <input type="text" name="picture" id="picture" value="${product.picture}" class="form-control"/>
                    </div>
                </div>

            </div>
        </div>
        <div class="border-top">
            <div style="float: right;">
                <input type="hidden" value="edit" name="action">
                <input type="submit" class="btn btn-success" value="Edit">
            </div>
        </div>
    </form>
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
