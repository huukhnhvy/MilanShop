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
                <h4 class="page-title">Order Management</h4>
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
            <div class="col-12 d-flex no-block align-items-center" style="width: 200px;">
            </div>
            <div class="col-md-4 col-md-offset-3" style="margin-left: auto;">
                <form action="${pageContext.request.contextPath}/admin-bill" method="post" class="search-form">
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
            <form action="<c:url value="/admin-bill"/>" id="formSubmit" method="get">
            <div class="card-body">
                <div class="table-responsive">
                    <table
                            class="table table-striped table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Customer</th>
                            <th scope="col">Address</th>
                            <th scope="col">Street</th>
                            <th scope="col">City</th>
                            <th scope="col">Email</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Date</th>
                            <th scope="col">Total</th>
                            <th scope="col">Status</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="item" items="${listBill}">
                            <tr>
                                <th scope="row">${item.id}</th>
                                <td>${item.fullname}</td>
                                <td>${item.address}</td>
                                <td>${item.street}</td>
                                <td>${item.city}</td>
                                <td>${item.email}</td>
                                <td>${item.phone}</td>
                                <td style="width: 100px">${item.date}</td>
                                <td>$${item.total}</td>
                                <td>${item.status.status}</td>
                                <td style="width: 80px"><ul style="list-style-type: none; padding-left: 0;">
                                    <a href="#details${item.id}" data-toggle="modal" style="margin-top: 5px" >
                                        <i class="material-icons" data-toggle="tooltip" title="Detail">&#xe8f4;</i>
                                    </a>
                                    <a href="#${item.id}"  class="edit" data-toggle="modal">
                                        <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                                    </a>
                                </ul>
                                </td>
                            </tr>
                            <!-- Add Modal HTML -->
                            <div id="${item.id}" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content" style="width: 500px; border: 0; font-size: 14px">
                                        <form action="${pageContext.request.contextPath}/admin-bill" method="post" id="formEdit">
                                            <div class="modal-header" style="display: block; background-color: lightcoral">
                                                <h4 class="modal-title">UPDATE STATUS</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <label>Order ID: ${item.id}</label><br>
                                                <label>Chọn trạng thái đơn hàng</label>
                                                <div>
                                                    <select class="select2 form-select shadow-none" id="pkId" name="pkId" style="width: 100%; height: 36px; font-size: 14px">
                                                        <option>Select</option>
                                                        <c:forEach var="s" items="${status}">
                                                            <option value="${s.id}" <c:if test="${s.id == item.status.id}">selected="selected"</c:if>>
                                                                    ${s.status}
                                                            </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                                <div class="modal-footer" style="padding: 10px 20px">
                                                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel" style="background-color: lightsteelblue">
                                                    <input type="hidden" value="edit" name="action">
                                                    <input type="hidden" value="${item.id}" name="id">
                                                    <input type="submit" class="btn btn-success" value="Edit">
                                                </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div id="details${item.id}" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form>
                                            <div class="modal-header">
                                                <h4 class="modal-title">Oder Details</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                              <c:forEach var="d" items="${listDetail}">
                                                  <c:if test="${d.bill.id == item.id}">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <img height="70px" style="margin-top: 5px" src="<c:url value="${d.product.picture}"/>" alt="product img" />
                                                    </div>
                                                    <div class="col-md-8">
                                                        <span>Code: ${d.product.code}</span><br>
                                                        <span>Name: ${d.product.name}</span><br>
                                                        <span>QTY: ${d.quantity}</span><br>
                                                        <span>Price: ${d.product.price}</span>
                                                    </div>
                                                </div>
                                                <hr  width="100%" />
                                                  </c:if>
                                              </c:forEach>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="button" class="btn btn-info" data-dismiss="modal" value="Cancel">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            </form>
            <!-- End Container fluid  -->
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
