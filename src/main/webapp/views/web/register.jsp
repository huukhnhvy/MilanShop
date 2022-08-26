<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <a href="<c:url value="/login?action=login"/>" class="active"
                                   style="font-size: 22px;">Login</a>
                            </div>
                            <div class="col-xs-6">
                                <a href="#" id="register-form-link" style="font-size: 22px;">Register</a>
                            </div>
                        </div>
                        <hr>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form  action="<c:url value="/register"/>" method="post">
                                    <c:if test="${not empty message}">
                                        <div class="alert alert-${alert}">
                                                ${message}
                                        </div>
                                    </c:if>
                                    <div class="form-group">
                                        <input type="text" name="username" id="username" tabindex="1"
                                               class="form-control" placeholder="Username" value="${user.username}" required>
                                        <c:if test="${not empty error_username}">
                                                    ${error_username}
                                        </c:if>
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="email" id="email" tabindex="1"
                                               class="form-control" placeholder="Email Address" value="${user.email}" required>
                                        <c:if test="${not empty error_email}">
                                            ${error_email}
                                        </c:if>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" id="password" tabindex="2"
                                               class="form-control" placeholder="Password" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="confirm-password" id="confirm-password"
                                               tabindex="2" class="form-control" placeholder="Confirm Password" required>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <input type="hidden" value="register" name="action">
                                                <input type="submit" name="register-submit" id="register-submit"
                                                       tabindex="4" class="form-control btn btn-register"
                                                       value="Register Now">
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
