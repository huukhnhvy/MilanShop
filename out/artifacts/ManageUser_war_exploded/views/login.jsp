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
        <!-- contact  -->
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel-login panel">
                    <div class="panel-heading">
                        <div class="row mb_20">
                            <div class="col-xs-6">
                                <a href="#" class="active" id="login-form-link"
                                   style="font-size: 22px;">Login</a>
                            </div>
                            <div class="col-xs-6">
                                <a href="<c:url value="/register?action=register"/>" style="font-size: 22px;">Register</a>
                            </div>
                        </div>
                        <hr>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form action="<c:url value="/login"/>" method="post">
                                    <c:if test="${not empty message}">
                                        <div class="alert alert-${alert}">
                                                ${message}
                                        </div>
                                    </c:if>
                                    <div class="form-group">
                                        <input type="text" name="username" id="username1" tabindex="1"
                                               class="form-control" placeholder="Username" value="">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" id="password" tabindex="2"
                                               class="form-control" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <input type="hidden" value="login" name="action">
                                                <input type="submit" name="login-submit" id="login-submit"
                                                       tabindex="4" class="form-control btn btn-login"
                                                       value="Submit">
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
