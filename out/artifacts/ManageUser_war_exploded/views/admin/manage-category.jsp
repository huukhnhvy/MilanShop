<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html dir="ltr" lang="en">
<head>
    <title>MiLan Shop</title>
</head>
<body>
<div class="preloader">
    <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
    </div>
</div>
<div
        id="main-wrapper"
        data-layout="vertical"
        data-navbarbg="skin5"
        data-sidebartype="full"
        data-sidebar-position="absolute"
        data-header-position="absolute"
        data-boxed-layout="full"
>
    <div class="page-wrapper">
        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-12 d-flex no-block align-items-center">
                    <h4 class="page-title">Category Management</h4>
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
                    <a href="#addEmployeeModal" class="btn btn-outline-primary" data-toggle="modal" >Add New Category</a>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="card">
                <div class="card-body">

                    <div class="table-responsive">
                        <table
                                id="zero_config"
                                class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Category ID</th>
                                <th scope="col">Code</th>
                                <th scope="col">Name</th>
                                <th scope="col">Description</th>
                                <th scope="col">Outfit</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="item" items="${category}">
                                <tr>
                                    <td>${item.id}</td>
                                    <td>${item.code}</td>
                                    <td>${item.name}</td>
                                    <td>${item.description}</td>
                                    <td>${item.outfit.name}</td>
                                    <td><ul style="list-style-type: none; padding-left: 0;">
                                        <form action="${pageContext.request.contextPath}/admin-category-edit" method="post" style="float: left; margin-top: 5px">
                                            <input type="hidden" name="action" value="load">
                                            <input type="hidden" name="id" value="${item.id}">
                                            <button class="btn" style="padding: 0 0;"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>
                                        </form>
                                        <form action="${pageContext.request.contextPath}/admin-category" method=get style="float: left; margin-top: 5px">
                                            <input type="hidden" name="action" value="delete">
                                            <input type="hidden" name="id" value="${item.id}">
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
            </div>
        </div>
    </div>
</div>
<!-- Add Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="${pageContext.request.contextPath}/admin-category" method="post">
                <div class="modal-header" style="display: block">
                    <h4 class="modal-title">Add Category</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Code</label>
                        <input name="code" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Name</label>
                        <input name="name" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea name="description" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Outfit</label>
                        <select class="form-control" id="outfit" name="outfit">
                            <option value="">Chọn loại sản phẩm</option>
                            <c:forEach var="item" items="${outfit}">
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
<footer class="footer text-center">

</footer>
<script>
    $("#zero_config").DataTable();
</script>
</body>
</html>
