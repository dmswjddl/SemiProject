<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>전자기기 통합 판매 플랫폼</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="/semiProject/resources/assets/img/favicon.ico">
<link rel="shortcut icon" type="image/x-icon"
	href="/semiProject/resources/assets/img/favicon.ico">

<link rel="stylesheet"
	href="/semiProject/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/flaticon.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/slicknav.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/animate.min.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/magnific-popup.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/fontawesome-all.min.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/themify-icons.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/slick.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/nice-select.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/style.css">
<!-- Css Styles -->
<link rel="stylesheet" href="/semiProject/resources/assets/css/cartbootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/cartnice-select.css" type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/cartowl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/cartstyle.css" type="text/css">
</head>
<%
	String cartCount = request.getParameter("cartCount");
%>

<body>
	<jsp:include page="../common/userHeader.jsp"></jsp:include>

	<!-- Shoping Cart Section Begin -->
	<section class="shoping-cart spad">
		<div class="container">
			<div class="row">

				<div class="col-lg-12">
					<div class="shoping__cart__table">
						<table>
							<thead>
								<tr>
									<th class="shoping__product">담은 상품 목록</th>
									<th>가격</th>
									<th>수량</th>
									<th>총합</th>
									<th></th>
								</tr>
							</thead>
							<c:forEach items="${cartList}" var='cartList' varStatus="status">
								<tbody>
									<tr>
										<td class="shoping__cart__item"><img
											src="" alt="">
											<h5>${cartList.pName }</h5></td>
										<!-- 상품 개당 가격 -->
										<td class="shoping__cart__price"><span class="price">${cartList.pPrice }</span>
											<span>원</span></td>
										<td class="shoping__cart__quantity">
											<form method="get" class="count" id='countForm'>
												<input type='hidden' name='pNo' value='${cartList.pNo }'
													id="p_no" />
												<div class="quantity">
													<div class="pro-qty">
														<!-- 장바구니에 담긴 상품의 개수 -->
														<input type="text" name="cartCount"
															value="${cartList.cartCount }" id="cartCount">
													</div>
												</div>
											</form>
										</td>
										<td class="shoping__cart__total">
											<!-- 한 상품에 대한 총합 -->
											<div class="total" id="total" price="${status.count }">${cartList.pPrice * cartList.cartCount }</div>
										</td>
										<!-- 상품 삭제 -->
										<td class="shoping__cart__item__close"><a
											href="deleteCart.do?cartNo=${cartList.cartNo}"> <span
												class="icon_close"></span>
										</a></td>
									</tr>
								</tbody>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="shoping__cart__btns">
						<a href="productListPage.do?num=1" class="primary-btn cart-btn">쇼핑
							계속하기</a>
					</div>
				</div>

				<!-- <div class="col-lg-6">
                    <div class="shoping__continue">
                        쿠폰번호 입력
                        <div class="shoping__discount">
                            <h5>Discount Codes</h5>
                            <form action="#">
                                <input type="text" placeholder="Enter your coupon code">
                                <button type="submit" class="site-btn">APPLY COUPON</button>
                            </form>
                        </div>
                    </div>
                </div> -->
				<div class="col-lg-12">
					<div class="shoping__checkout">
						<h5>계산서</h5>
						<ul>
							<li>총 합계 액 <c:set var="allSum" value="0" /> <c:forEach
									var="result" items="${cartList}" varStatus="status">
									<c:set var="allSum"
										value="${allSum + (result.pPrice * result.cartCount)  }" />
								</c:forEach> <span id="cartTotal">${allSum }원</span> <input name="cartTotal"
								type="hidden" class="cartTotal" value="0" size="10" />
							</li>
						</ul>
						<a href="checkoutCart.do" class="primary-btn">구 매 하 기</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="../common/userFooter.jsp"></jsp:include>
	<!-- Shoping Cart Section End -->

	<!-- Js Plugins -->
		<script
		src="/semiProject/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script
		src="/semiProject/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="/semiProject/resources/assets/js/popper.min.js"></script>
	<script src="/semiProject/resources/assets/js/bootstrap.min.js"></script>

	<!-- Jquery Mobile Menu -->
	<script src="/semiProject/resources/assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="/semiProject/resources/assets/js/owl.carousel.min.js"></script>
	<script src="/semiProject/resources/assets/js/slick.min.js"></script>

	<!-- One Page, Animated-HeadLin -->
	<script src="/semiProject/resources/assets/js/wow.min.js"></script>
	<script src="/semiProject/resources/assets/js/animated.headline.js"></script>

	<!-- Scroll up, nice-select, sticky -->
	<script src="/semiProject/resources/assets/js/jquery.scrollUp.min.js"></script>
	<script
		src="/semiProject/resources/assets/js/jquery.nice-select.min.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.sticky.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.magnific-popup.js"></script>

	<!-- contact js -->
	<script src="/semiProject/resources/assets/js/contact.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.form.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.validate.min.js"></script>
	<script src="/semiProject/resources/assets/js/mail-script.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="/semiProject/resources/assets/js/plugins.js"></script>
	<script src="/semiProject/resources/assets/js/main.js"></script>
	<script src="/semiProject/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/semiProject/resources/js/cartbootstrap.min.js"></script>
	<script src="/semiProject/resources/js/jquery.nice-select.min.js"></script>
	<script src="/semiProject/resources/js/jquery-ui.min.js"></script>
	<script src="/semiProject/resources/js/jquery.slicknav.js"></script>
	<script src="/semiProject/resources/js/mixitup.min.js"></script>
	<script src="/semiProject/resources/js/owl.carousel.min.js"></script>
	<script src="/semiProject/resources/js/cartmain.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('.pro-qty').click(
					function() {

						var price = $(this).parent().parent().parent().parent()
								.find('.price').text(); // 상품의 가격
						var count = $(this).find('#cartCount').val(); // 상품의 개수
						console.log(count);
						var total = price * count; // 한 상품의 개수*가격
						var len = 0;
						var realTotal = 0; // 장바구니 총합 액수

						// 
						$(this).parent().parent().parent().parent().find(
								'.total').text(total); // 한 상품의 개수*가격

						<c:forEach items="${cartList}" var="cart">
						len += 1;
						</c:forEach>

						for (var i = 1; i <= len; i++) { // 장바구니 총합 액수(늘어날수록 증가)
							realTotal += parseInt($('.total[price=' + i + ']')
									.html());
						}

						$('#cartTotal').html(realTotal + '원');
					});
		})
	</script>

</body>

</html>