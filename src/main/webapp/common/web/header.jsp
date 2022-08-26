<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Start Header -->
<header id="htc__header" class="htc__header__area header--one">
    <!-- Start Mainmenu -->
    <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
        <div class="container">
            <div class="row">
                <div class="menumenu__container clearfix">
                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5">
                        <div class="logo">
                            <a href="#"><img src="<c:url value="/template/web/img/logo.png"/>" alt="logo images"></a>
                        </div>
                    </div>
                    <div class="col-md-7 col-lg-8 col-sm-5 col-xs-3">
                        <nav class="main__menu__nav hidden-xs hidden-sm">
                            <ul class="main__menu">
                                <li class="drop"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                                <c:forEach var="item" items="${listOutfit}">
                                <li class="drop"><a href="">${item.name}</a>
                                    <ul class="dropdown mega_dropdown" style="width: 200px">
                                        <!-- Start Menu -->
                                        <li><a class="mega__title" href="#">All Product</a>
                                            <ul class="mega__item">
                                    <c:forEach var="c" items="${listCategory}">
                                        <c:if test="${item.id == c.outfit.id }">
                                                <li><a href="${pageContext.request.contextPath}/product-grid?cid=${c.id}&page=1&maxPageItem=12">${c.name}</a></li>
                                        </c:if>
                                    </c:forEach>
                                            </ul>
                                        </li>
                                        <!-- End Menu -->
                                    </ul>
                                </li>
                                </c:forEach>
                                <li><a href="${pageContext.request.contextPath}/contact">contact</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
                        <div class="header__right">
                            <div class="header__search search search__open">
                                <a href="#"><i class="icon-magnifier icons"></i></a>
                            </div>
                            <c:if test="${empty USER}">
                            <div>
                                <li class="header__navbar-user header__navbar-item">
                                    <i class="icon-user icons"
                                       style="margin: 0 25px 0 0; font-size: 1.4rem;"></i></a>
                                    <ul class="header__navbar-user-menu">
                                        <li class="header__navbar-user-item">
                                            <a href="<c:url value="/login?action=login"/>">Login</a>
                                        </li>
                                        <li class="header__navbar-user-item">
                                            <a href="<c:out value="/register?action=register"/>">Registration</a>
                                        </li>
                                    </ul>
                                </li>
                            </div>
                            </c:if>
                            <c:if test="${not empty USER}">
                                <div>
                                    <li class="header__navbar-user header__navbar-item">
                                        <i class="icon-user icons"
                                           style="margin: 0 25px 0 0; font-size: 1.4rem;"></i></a>
                                        <ul class="header__navbar-user-menu">
                                        <li class="header__navbar-user-item">
                                            <a href="<c:url value="/changePassword"/>">Change Password</a>
                                        </li>
                                        <li class="header__navbar-user-item">
                                            <a href="<c:url value="/logout?action=logout"/>">Logout</a>
                                        </li>
                                    </ul>
                                </li>
                            </div>
                                <div class="header__account">
                                    <a style="color: #d9534f" href="#">${USER.username}</a>
                                </div>
                            </c:if>
                            <div class="htc__shopping__cart">
                                <a class="cart__menu" href="#"><i class="icon-handbag icons"></i></a>
                                <c:if test="${not empty quantityItem}">
                                    <c:if test="${quantityItem != 0}">
                                <a href="#"><span class="htc__qua">${quantityItem}</span></a
                                    </c:if>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Mainmenu -->
</header>
<!-- End Header -->
