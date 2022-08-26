<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/8/2021
  Time: 4:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MILAN - Thời trang hiện đại</title>
</head>
<body>
<!-- Start Product Details Area -->
<section class="htc__product__details bg__white ptb--100" style="padding-top: 30px;">
    <!-- Start Product Details Top -->
    <div class="htc__product__details__top">
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">
                    <div class="htc__product__details__tab__content">
                        <!-- Start Product Big Images -->
                        <div class="product__big__images">
                            <div class="portfolio-full-image tab-content">
                                <div role="tabpanel" class="tab-pane fade in active" id="img-tab-1">
                                    <img src="<c:url value="/template/web/img/img2.jpg"/>" alt="full-image">
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="img-tab-2">
                                    <img src="<c:url value="/template/web/img/img2.jpg"/>" alt="full-image">
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="img-tab-3">
                                    <img src="<c:url value="/template/web/img/img2.jpg"/>" alt="full-image">
                                </div>
                            </div>
                        </div>
                        <!-- End Product Big Images -->
                        <!-- Start Small images -->
                        <ul class="product__small__images" role="tablist">
                            <li role="presentation" class="pot-small-img active">
                                <a href="#img-tab-1" role="tab" data-toggle="tab">
                                    <img src="<c:url value="/template/web/img/img2.jpg"/>" alt="small-image">
                                </a>
                            </li>
                            <li role="presentation" class="pot-small-img">
                                <a href="#img-tab-2" role="tab" data-toggle="tab">
                                    <img src="<c:url value="/template/web/img/img2.jpg"/>" alt="small-image">
                                </a>
                            </li>
                            <li role="presentation" class="pot-small-img">
                                <a href="#img-tab-3" role="tab" data-toggle="tab">
                                    <img src="<c:url value="/template/web/img/img2.jpg"/>" alt="small-image">
                                </a>
                            </li>
                        </ul>
                        <!-- End Small images -->
                    </div>
                </div>
                <div class="col-md-7 col-lg-7 col-sm-12 col-xs-12 smt-40 xmt-40">
                    <div class="ht__product__dtl">
                        <h2>jean shirt to sassy girl</h2>
                        <h6>Model: <span>MNG001</span></h6>
                        <ul class="pro__prize">
                            <li class="old__prize">$82.5</li>
                            <li>$75.2</li>
                        </ul>
                        <p class="pro__info">5-pocket, ankle-length jeans in washed denim with an extra-high
                            waist and zip fly and button. Loose fit with gently tapered legs. The cotton
                            content of the jeans is partly recycled.</p>
                        <div class="ht__pro__desc">
                            <div class="sin__desc">
                                <p><span>Availability:</span> In Stock</p>
                            </div>
                            <div class="sin__desc align--left">
                                <p><span>Quantity</span></p>
                                <select class="select__size">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div>
                            <div class="sin__desc align--left">
                                <p><span>Categories:</span></p>
                                <ul class="pro__cat__list">
                                    <li><a href="">Women,</a></li>
                                    <li><a href="">Men,</a></li>
                                    <li><a href="">Kids</a></li>
                                </ul>
                            </div>
                            <div class="add-btn">
                                <button type="submit" class="add-cart">ADD</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Product Details Top -->
</section>
<!-- End Product Details Area -->
<!-- Start Product Description -->
<section class="htc__produc__decription bg__white">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <!-- Start List And Grid View -->
                <ul class="pro__details__tab" role="tablist">
                    <li role="presentation" class="description active"><a href="#description" role="tab"
                                                                          data-toggle="tab">description</a></li>
                </ul>
                <!-- End List And Grid View -->
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="ht__pro__details__content">
                    <!-- Start Single Content -->
                    <div role="tabpanel" id="description"
                         class="pro__single__content tab-pane fade in active">
                        <div class="pro__tab__content__inner">
                            <h4 class="ht__pro__title">Description</h4>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                nibh
                                euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi
                                enim ad
                                minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl
                                ut
                                aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in
                                hendrerit in
                                vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla
                                facilisis at vero eros et accumsan et iusto odio dignissim qui blandit
                                praesent
                                luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam
                                liber
                                tempor cum soluta nobis eleifend option congue nihil imperdiet doming id
                                quod
                                mazim placerat facer possim assum. Typi non habent claritatem insitam; est
                                usus
                                legentis in iis qui facit eorum claritatem</p>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                nibh
                                euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Duis autem
                                vel
                                eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,
                                vel
                                illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto
                                odio
                                dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te
                                feugait nulla facilisi.</p>
                            <h4 class="ht__pro__title">Standard Featured</h4>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                nibh
                                euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi
                                enim ad
                                minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl
                                ut
                                aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in
                                hendrerit in
                                vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla
                                facilisis at vero eros et accumsan et iusto odio dignissim qui blandit
                                praesent
                                luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam
                                liber
                                tempor cum soluta nobis eleifend option congue nihil imperdiet doming id
                                quod
                                mazim placerat facer possim assum. Typi non habent claritatem insitam; est
                                usus
                                legentis in
                                l</p>
                        </div>
                    </div>
                    <!-- End Single Content -->
                    <!-- Start Single Content -->
                    <div role="tabpanel" id="review" class="pro__single__content tab-pane fade">
                        <div class="pro__tab__content__inner">
                            <p>Formfitting clothing is all about a sweet spot. That elusive place where an
                                item
                                is tight but not clingy, sexy but not cloying, cool but not over the top.
                                Alexandra Alvarez’s label, Alix, hits that mark with its range of
                                comfortable,
                                minimal, and neutral-hued bodysuits.</p>
                            <h4 class="ht__pro__title">Description</h4>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                nibh
                                euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi
                                enim ad
                                minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl
                                ut
                                aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in
                                hendrerit in
                                vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla
                                facilisis at vero eros et accumsan et iusto odio dignissim qui blandit
                                praesent
                                luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam
                                liber
                                tempor cum soluta nobis eleifend option congue nihil imperdiet doming id
                                quod
                                mazim placerat facer possim assum. Typi non habent claritatem insitam; est
                                usus
                                legentis in iis qui facit eorum claritatem</p>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                nibh
                                euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Duis autem
                                vel
                                eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,
                                vel
                                illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto
                                odio
                                dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te
                                feugait nulla facilisi.</p>
                            <h4 class="ht__pro__title">Standard Featured</h4>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                nibh
                                euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi
                                enim ad
                                minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl
                                ut
                                aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in
                                hendrerit in
                                vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla
                                facilisis at vero eros et accumsan et iusto odio dignissim qui blandit
                                praesent
                                luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam
                                liber
                                tempor cum soluta nobis eleifend option congue nihil imperdiet doming id
                                quod
                                mazim placerat facer possim assum. Typi non habent claritatem insitam; est
                                usus
                                legentis in iis qui facit eorum claritatem</p>
                        </div>
                    </div>
                    <!-- End Single Content -->
                    <!-- Start Single Content -->
                    <div role="tabpanel" id="shipping" class="pro__single__content tab-pane fade">
                        <div class="pro__tab__content__inner">
                            <p>Formfitting clothing is all about a sweet spot. That elusive place where an
                                item
                                is tight but not clingy, sexy but not cloying, cool but not over the top.
                                Alexandra Alvarez’s label, Alix, hits that mark with its range of
                                comfortable,
                                minimal, and neutral-hued bodysuits.</p>
                            <h4 class="ht__pro__title">Description</h4>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                nibh
                                euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi
                                enim ad
                                minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl
                                ut
                                aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in
                                hendrerit in
                                vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla
                                facilisis at vero eros et accumsan et iusto odio dignissim qui blandit
                                praesent
                                luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam
                                liber
                                tempor cum soluta nobis eleifend option congue nihil imperdiet doming id
                                quod
                                mazim placerat facer possim assum. Typi non habent claritatem insitam; est
                                usus
                                legentis in iis qui facit eorum claritatem</p>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                nibh
                                euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Duis autem
                                vel
                                eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,
                                vel
                                illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto
                                odio
                                dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te
                                feugait nulla facilisi.</p>
                            <h4 class="ht__pro__title">Standard Featured</h4>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                nibh
                                euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi
                                enim ad
                                minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl
                                ut
                                aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in
                                hendrerit in
                                vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla
                                facilisis at vero eros et accumsan et iusto odio dignissim qui blandit
                                praesent
                                luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam
                                liber
                                tempor cum soluta nobis eleifend option congue nihil imperdiet doming id
                                quod
                                mazim placerat facer possim assum. Typi non habent claritatem insitam; est
                                usus
                                legentis in iis qui facit eorum claritatem</p>
                        </div>
                    </div>
                    <!-- End Single Content -->
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Product Description -->
<!-- Start Product Area -->
<section class="htc__product__area--2 pb--100 product-details-res">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section__title--2 text-center">
                    <h2 class="title__line">New Arrivals</h2>
                    <p>Make people fall in love with your clothes.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="product__wrap clearfix">
                <!-- Start Single Product -->
                <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
                    <div class="category">
                        <div class="ht__cat__thumb">
                            <a href="">
                                <img src="<c:url value="/template/web/img/img2.jpg"/>" alt="product images">
                            </a>
                        </div>
                        <div class="fr__hover__info">
                            <ul class="product__action">
                                <li><a href=""><i class="icon-handbag icons"></i></a></li>

                            </ul>
                        </div>
                        <div class="fr__product__inner">
                            <h4><a href="">Loose Mom Ultra High Jeans</a></h4>
                            <ul class="fr__pro__prize">
                                <li class="old__prize">$30.3</li>
                                <li>$25.9</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- End Single Product -->
                <!-- Start Single Product -->
                <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
                    <div class="category">
                        <div class="ht__cat__thumb">
                            <a href="">
                                <img src="<c:url value="/template/web/img/img2.jpg"/>" alt="product images">
                            </a>
                        </div>
                        <div class="fr__hover__info">
                            <ul class="product__action">
                                <li><a href=""><i class="icon-handbag icons"></i></a></li>
                            </ul>
                        </div>
                        <div class="fr__product__inner">
                            <h4><a href="">Skinny High Cropped</a></h4>
                            <ul class="fr__pro__prize">
                                <li class="old__prize">$30.3</li>
                                <li>$25.9</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- End Single Product -->
                <!-- Start Single Product -->
                <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
                    <div class="category">
                        <div class="ht__cat__thumb">
                            <a href="">
                                <img src="<c:url value="/template/web/img/img2.jpg"/>" alt="product images">
                            </a>
                        </div>
                        <div class="fr__hover__info">
                            <ul class="product__action">
                                <li><a href=""><i class="icon-handbag icons"></i></a></li>
                            </ul>
                        </div>
                        <div class="fr__product__inner">
                            <h4><a href="">Flared Low Waist</a></h4>
                            <ul class="fr__pro__prize">
                                <li class="old__prize">$30.3</li>
                                <li>$25.9</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- End Single Product -->
                <!-- Start Single Product -->
                <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
                    <div class="category">
                        <div class="ht__cat__thumb">
                            <a href="">
                                <img src="<c:url value="/template/web/img/img2.jpg"/>" alt="product images">
                            </a>
                        </div>
                        <div class="fr__hover__info">
                            <ul class="product__action">
                                <li><a href=""><i class="icon-handbag icons"></i></a></li>
                            </ul>
                        </div>
                        <div class="fr__product__inner">
                            <h4><a href="">Wide High Ankle</a></h4>
                            <ul class="fr__pro__prize">
                                <li class="old__prize">$30.3</li>
                                <li>$25.9</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- End Single Product -->
            </div>
        </div>
    </div>
</section>
<!-- End Product Area -->
</body>
</html>
