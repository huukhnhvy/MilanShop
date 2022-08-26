<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/8/2021
  Time: 5:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MILAN - Thời trang hiện đại</title>
</head>
<body>
<!-- cart-main-area start -->
<div class="cart-main-area ptb--100 bg__white" style="padding-top: 30px;">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <form action="#">
          <div class="table-content table-responsive">
            <table>
              <thead>
              <tr>
                <th class="product-thumbnail">products</th>
                <th class="product-name">name of products</th>
                <th class="product-price">Price</th>
                <th class="product-quantity">Quantity</th>
                <th class="product-subtotal">Total</th>
                <th class="product-remove">Delete</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td class="product-thumbnail"><a href=""><img
                        src="<c:url value="/template/web/img/img4.jpg"/>" alt="product img" /></a>
                </td>
                <td class="product-name"><a href="">New Dress For
                  Sunday</a>
                  <ul class="pro__prize">
                    <li class="old__prize">$82.5</li>
                    <li>$75.2</li>
                  </ul>
                </td>
                <td class="product-price"><span class="amount">£165.00</span></td>
                <td class="product-quantity"><input type="number" value="1" /></td>
                <td class="product-subtotal">£165.00</td>
                <td class="product-remove"><a href=""><i
                        class="icon-trash icons"></i></a>
                </td>
              </tr>
              <tr>
                <td class="product-thumbnail"><a href=""><img
                        src="<c:url value="/template/web/img/img4.jpg"/>" alt="product img" /></a>
                </td>
                <td class="product-name"><a href="">Slim Fit
                  Easy-iron</a>
                  <ul class="pro__prize">
                    <li class="old__prize">$82.5</li>
                    <li>$75.2</li>
                  </ul>
                </td>
                <td class="product-price"><span class="amount">£50.00</span></td>
                <td class="product-quantity"><input type="number" value="1" /></td>
                <td class="product-subtotal">£50.00</td>
                <td class="product-remove"><a href=""><i
                        class="icon-trash icons"></i></a>
                </td>
              </tr>
              <tr>
                <td class="product-thumbnail"><a href=""><img
                        src="<c:url value="/template/web/img/img4.jpg"/>" alt="product img" /></a>
                </td>
                <td class="product-name"><a href="">Slim Fit
                  Easy-iron</a>
                  <ul class="pro__prize">
                    <li class="old__prize">$82.5</li>
                    <li>$75.2</li>
                  </ul>
                </td>
                <td class="product-price"><span class="amount">£50.00</span></td>
                <td class="product-quantity"><input type="number" value="1" /></td>
                <td class="product-subtotal">£50.00</td>
                <td class="product-remove"><a href=""><i
                        class="icon-trash icons"></i></a>
                </td>
              </tr>
              <tr>
                <td class="product-thumbnail"><a href=""><img
                        src="" alt="product img" /></a>
                </td>
                <td class="product-name"><a href="">Regular Fit
                  Flannel</a>
                  <ul class="pro__prize">
                    <li class="old__prize">$82.5</li>
                    <li>$75.2</li>
                  </ul>
                </td>
                <td class="product-price"><span class="amount">£50.00</span></td>
                <td class="product-quantity"><input type="number" value="1" /></td>
                <td class="product-subtotal">£50.00</td>
                <td class="product-remove"><a href=""><i
                        class="icon-trash icons"></i></a>
                </td>
              </tr>
              </tbody>
            </table>
          </div>
          <div class="row">
            <div class="col-md-14 col-sm-12 col-xs-12 smt-40 xmt-40">
              <div class="htc__cart__total">
                <h6>cart total</h6>
                <div class="cart__desk__list">
                  <ul class="cart__desc">
                    <li>cart total</li>
                    <li>shipping</li>
                  </ul>
                  <ul class="cart__price">
                    <li>$909.00</li>
                    <li>0</li>
                  </ul>
                </div>
                <div class="cart__total">
                  <span>order total</span>
                  <span>$918.00</span>
                </div>
                <ul class="payment__btn">
                  <li class="active"><a href="">Checkout</a></li>
                  <li><a href="">continue shopping</a></li>
                </ul>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- cart-main-area end -->
</body>
</html>
