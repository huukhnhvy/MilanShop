<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Left Sidebar - style you can find in sidebar.scss  -->
<aside class="left-sidebar" data-sidebarbg="skin5">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav" class="pt-4">
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/admin-home" aria-expanded="false">
                        <i class="mdi mdi-view-dashboard"></i>
                        <span class="hide-menu">Dashboard</span></a>
                </li>
                <li class="sidebar-item">
                    <a style="text-decoration: none" class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="mdi mdi-border-inside"></i>
                        <span class="hide-menu">Quản lý người dùng</span></a>
                    <ul aria-expanded="false" class="collapse first-level">
                        <li class="sidebar-item">
                            <c:url var="QLUser" value="/admin-manager">
                                <c:param name="page" value="1"/>
                                <c:param name="maxPageItem" value="10"/>
                            </c:url>
                            <a href="${QLUser}" class="sidebar-link">
                                <i class="mdi mdi-note-outline"></i>
                                <span class="hide-menu">Quản lý tài khoản</span></a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-item">
                    <a style="text-decoration: none" class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="mdi mdi-border-inside"></i>
                        <span class="hide-menu">Quản lý sản phẩm</span></a>
                    <ul aria-expanded="false" class="collapse first-level">
                        <li class="sidebar-item">
                            <a href="${pageContext.request.contextPath}/admin-product?page=1&maxPageItem=5" class="sidebar-link">
                                <i class="mdi mdi-note-outline"></i>
                                <span class="hide-menu">Quản lý sản phẩm</span></a>
                        </li>
                        <li class="sidebar-item">
                            <a href="${pageContext.request.contextPath}/admin-category" class="sidebar-link">
                                <i class="mdi mdi-note-plus"></i>
                                <span class="hide-menu">Quản lý loại sản phẩm</span></a>
                        </li>
                        <li class="sidebar-item">
                            <a href="${pageContext.request.contextPath}/admin-outfit?page=1&maxPageItem=5" class="sidebar-link">
                                <i class="mdi mdi-note-plus"></i>
                                <span class="hide-menu">Chi tiết sản phẩm</span></a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-item">
                    <a style="text-decoration: none" class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="mdi mdi-border-inside"></i>
                        <span class="hide-menu">Quản lý đơn hàng</span></a>
                    <ul aria-expanded="false" class="collapse first-level">
                        <li class="sidebar-item">
                            <a href="${pageContext.request.contextPath}/admin-bill" class="sidebar-link">
                                <i class="mdi mdi-note-plus"></i>
                                <span class="hide-menu">Quản lý đơn hàng</span></a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>
<!-- End Left Sidebar - style you can find in sidebar.scss  -->