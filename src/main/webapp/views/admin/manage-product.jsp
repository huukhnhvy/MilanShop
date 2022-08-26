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
                <h4 class="page-title">Product Management</h4>
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
            <div class="col-12 d-flex no-block align-items-center" style="width: 200px">
                <a href="#addEmployeeModal" class="btn btn-outline-primary" data-toggle="modal" >Add New Product</a>
            </div>
            <div class="col-md-4 col-md-offset-3" style="margin-left: auto;">
                <form action="${pageContext.request.contextPath}/admin-product" method="post" class="search-form">
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
        <div class="card">
            <form action="<c:url value="/admin-product"/>" id="formSubmit" method="get">
            <div class="card-body">

                <div class="table-responsive">
                    <table
                            id="zero_config"
                            class="table table-striped table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Code</th>
                            <th scope="col">Name</th>
                            <th scope="col">Image</th>
                            <th scope="col">Short description</th>
                            <th scope="col">Price</th>
                            <th scope="col">Sale</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Category</th>
                            <th scope="col">Status</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="item" items="${listProduct}">
                            <tr>
                                <th scope="row">${item.code}</th>
                                <td>${item.name}</td>
                                <td class="product-thumbnail"><a href=""><img height="200px"
                                        src="${item.picture}" alt="product img" /></a>
                                </td>
                                <td>${item.shortdescrip}</td>
                                <td>${item.price}</td>
                                <td>${item.sale}</td>
                                <td>${item.quantity}</td>
                                <td>${item.category.name}</td>
                                <td>còn hàng</td>
                                <td style="width: 80px"><ul style="list-style-type: none; padding-left: 0;">
                                    <c:url var="edit" value="/admin-edit-product">
                                        <c:param name="action" value="load"/>
                                        <c:param name="id" value="${item.id}"/>
                                    </c:url>
                                    <a href="${edit}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <c:url var="delete" value="/admin-product">
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
                </div>
            </div>
            </form>
            <!-- End Container fluid  -->
            <!-- Add Modal HTML -->
            <div id="addEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content" style="width: 600px">
                        <form action="${pageContext.request.contextPath}/admin-product" method="post">
                            <div class="modal-header" style="display: block">
                                <h4 class="modal-title">Add Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group" style="float: left; width: 30%; padding-right: 10px">
                                    <label>Code</label>
                                    <input name="code" type="text" class="form-control" required>
                                </div>
                                <div class="form-group" style="float: left; width: 70%; padding-right: 10px">
                                    <label>Name</label>
                                    <input name="name" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Image</label>
                                    <input name="picture" type="text" class="form-control" required></input>
                                </div>
                                <div class="form-group">
                                    <label>Short Description</label>
                                    <textarea name="shortdescrip" type="text" class="form-control" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="description" type="text" class="form-control" required></textarea>
                                </div>
                                <div class="form-group" style="float:left; width: 50%; padding-right: 10px">
                                    <label>Price</label>
                                    <input name="price" type="text" class="form-control" required></input>
                                </div>
                                <div class="form-group" style="float: left; width: 50%; padding-left: 10px">
                                    <label>Discount</label>
                                    <input name="sale" type="text" class="form-control" required></input>
                                </div>
                                <div class="form-group" style="float: left; width: 50%; padding-left: 10px">
                                    <label>Quantity</label>
                                    <input name="quantity" type="text" class="form-control" required></input>
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select class="form-control" id="category" name="pkId">
                                        <option value="">Chọn loại sản phẩm</option>
                                        <c:forEach var="item" items="${category}">
                                            <option value="${item.id}">${item.name}</option>
                                        </c:forEach>
                                    </select>
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
