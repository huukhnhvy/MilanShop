<!-- Start Offset Wrapper -->
<div class="offset__wrapper">
    <!-- Start Search -->
    <div class="search__area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="search__inner">
                        <form action="${pageContext.request.contextPath}/home" method="post">
                            <input type="hidden" name="action" value="search">
                            <input placeholder="" type="text" name="txtProduct" value="${txtProduct}">
                            <button type="submit"></button>
                        </form>
                        <div class="search__close__btn">
                            <span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Search -->
    <!-- Start Cart -->
    <div class="shopping__cart">
        <div class="shopping__cart__inner">
            <div class="offsetmenu__close__btn">
                <a href="#"><i class="zmdi zmdi-close"></i></a>
            </div>
            <div class="shp__cart__wrap">
                <c:set var="total" value="0"></c:set>
                <c:forEach var="item" items="${cart.items}">
                    <c:set var="total" value="${total + item.product.price * item.quantity}"></c:set>
                    <div class="shp__single__product">
                    <div class="shp__pro__thumb">
                        <a href="#">
                            <img src="<c:url value="${item.product.picture}"/>" alt="product images">
                        </a>
                    </div>
                    <div class="shp__pro__details">
                        <h2><a href="">${item.product.name}</a></h2>
                        <span class="quantity">QTY: ${item.quantity}</span>
                        <span class="shp__price">${item.totalCurrencyFormat}</span>
                    </div>
                    <div class="remove__btn">
                        <a href="${pageContext.request.contextPath}/cart?action=delete&productId=${item.product.id}&quantity=0"
                           title="Remove this item"><i class="zmdi zmdi-close"></i></a>
                    </div>
                </div>
                </c:forEach>
            </div>
            <ul class="shoping__total">
                <li class="subtotal">Subtotal: $${total}</li>
                <li class="total__price"></li>
            </ul>
            <ul class="shopping__btn">
                <li><a href="${pageContext.request.contextPath}/cart">View Cart</a></li>
                <li class="shp__checkout"><a href="${pageContext.request.contextPath}/checkout?action=checkout&total=${total}">Checkout</a></li>
            </ul>
        </div>
    </div>
    <!-- End Cart -->
</div>
<!-- End Offset Wrapper -->