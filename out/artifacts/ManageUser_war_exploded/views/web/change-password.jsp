<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/6/2021
  Time: 7:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MILAN - Thời trang hiện đại</title>
</head>
<body>
<div class="cart-main-area ptb--100 bg__white">
    <div class="container">
        <!-- reset password  -->
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel-login panel">
                    <div class="panel-heading">
                        <div class="row mb_20">
                            <div class="col-xs-12">
                                <span class="active" id="login-form-link" style="font-size: 35px;">Change Password</span>
                            </div>
                        </div>
                        <hr>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form id="login-form" action="<c:url value="/changePassword"/>" method="post">
                                    <c:if test="${not empty message}">
                                        <div class="alert alert-success">
                                                ${message}
                                        </div>
                                    </c:if>
                                    <c:if test="${not empty error}">
                                        <div class="alert alert-danger">
                                                ${error}
                                        </div>
                                    </c:if>
                                    <div class="form-group">
                                        <input type="text" name="username" id="username1" tabindex="1"
                                               class="form-control" placeholder="Username" value="${USER.username}">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="oldPassword" id="current-password"
                                               tabindex="2" class="form-control" placeholder="Current Password">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="newPassword" id="password" tabindex="3"
                                               class="form-control" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="confPassword" id="conf-password"
                                               tabindex="4" class="form-control" placeholder="Confirm Password">
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <input type="submit" name="login-submit" id="login-submit"
                                                       tabindex="5" class="form-control btn btn-login"
                                                       value="Change Password">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
