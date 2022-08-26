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
                                <a href="#" id="register-form-link" style="font-size: 22px;">Register</a>
                            </div>
                        </div>
                        <hr>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form id="login-form" action="#" method="post">
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
                                                <input type="submit" name="login-submit" id="login-submit"
                                                       tabindex="4" class="form-control btn btn-login"
                                                       value="Log In">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <form id="register-form" action="#" method="post">
                                    <div class="form-group">
                                        <input type="text" name="username" id="username" tabindex="1"
                                               class="form-control" placeholder="Username" value="">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="email" id="email" tabindex="1"
                                               class="form-control" placeholder="Email Address" value="">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" id="password2" tabindex="2"
                                               class="form-control" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="confirm-password" id="confirm-password"
                                               tabindex="2" class="form-control" placeholder="Confirm Password">
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
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
