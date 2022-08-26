<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MILAN - Thời trang hiện đại</title>
</head>
<body>
<!-- Start Product Grid -->
<section class="htc__product__grid bg__white ptb--100" style="padding-top:30px">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-lg-push-3 col-md-9 col-md-push-3 col-sm-12 col-xs-12">
                <div class="htc__product__rightidebar">
                    <!-- Start Product View -->
                    <form action="<c:url value="/product-grid"/>" id="formSubmit" method="get">
                    <div class="row">
                        <div class="shop__grid__view__wrap">
                            <div role="tabpanel" id="grid-view"
                                 class="single-grid-view tab-pane fade in active clearfix">
                                <c:forEach var="p" items="${listP}">
                                <!-- Start Single Product -->
                                <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                                    <div class="category">
                                        <div class="ht__cat__thumb">
                                            <a href="${pageContext.request.contextPath}/product-detail?pid=${p.id}">
                                                <img src="<c:url value="${p.picture}"/>" alt="product images">
                                            </a>
                                        </div>
                                        <div class="fr__hover__info">
                                            <ul class="product__action">
                                                <li><a href="${pageContext.request.contextPath}/cart?productId=${p.id}"><i
                                                        class="icon-handbag icons"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="fr__product__inner">
                                            <h4><a href="${pageContext.request.contextPath}/product-detail?pid=${p.id}">${p.name}</a></h4>
                                            <ul class="fr__pro__prize">
                                                <li>$${p.price}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single Product -->
                                </c:forEach>
                                <input type="hidden" value="${model.pkId}" name="cid">
                                <input type="hidden" value="" id="page" name="page">
                                <input type="hidden" value="" id="maxPageItem" name="maxPageItem">
                            </div>
                        </div>
                    </div>
                    </form>
                    <!-- End Product View -->
                </div>
            </div>
            <div class="col-lg-3 col-lg-pull-9 col-md-3 col-md-pull-9 col-sm-12 col-xs-12 smt-40 xmt-40">
                <div class="htc__product__leftsidebar">
                    <!-- Start Category Area -->
                    <div class="htc__category">
                        <h4 class="title__line--4">categories</h4>
                        <ul class="ht__cat__list">
                            <c:forEach var="item" items="${listCategory}">
                            <li><a href="${pageContext.request.contextPath}/product-grid?cid=${item.id}&page=1&maxPageItem=12">${item.name}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <!-- End Category Area -->

                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Product Grid -->
<div class="container" style="text-align: center;">
    <nav aria-label="Page navigation">
        <ul class="pagination" id="pagination"></ul>
    </nav>
</div>
<script type="text/javascript">
    var currentPage = ${model.page};
    var totalPages = ${model.totalPage};
    var limit = 12;
    var cid = ${model.pkId}
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
                    $('#cid').val(cid)
                    $('#formSubmit').submit();
                }
            }
        });
    });
</script>
</body>
</html>
