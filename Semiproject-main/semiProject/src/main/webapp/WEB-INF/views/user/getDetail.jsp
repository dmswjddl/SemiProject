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

<!-- Css Styles -->
<link rel="stylesheet" href="/semiProject/resources/assets/css/detailbootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/detailnice-select.css"
	type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/detailowl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="/semiProject/resources/assets/css/detailstyle.css" type="text/css">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="/semiProject/resources/assets/img/favicon.ico">

<!-- CSS here -->
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

</head>

<body>
	<jsp:include page="../common/userHeader.jsp"></jsp:include>

	<!-- Product Details Section Begin -->
	<section class="product-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="product__details__pic">
						<div class="product__details__pic__item">
							<img class="product__details__pic__item--large"
								src="shop_detail/img/product-details-1.jpg" alt="">
						</div>
						<!-- 상품 하단 (슬라이서) 품목 4개 노출
                        	<div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="shop_detail/img/product-details-2.jpg"
                                src="shop_detail/img/thumb-1.jpg" alt="">
                            <img data-imgbigurl="shop_detail/img/product-details-3.jpg"
                                src="shop_detail/img/thumb-2.jpg" alt="">
                            <img data-imgbigurl="shop_detail/img/product-details-5.jpg"
                                src="shop_detail/img/thumb-3.jpg" alt="">
                            <img data-imgbigurl="shop_detail/img/product-details-4.jpg"
                                src="shop_detail/img/thumb-4.jpg" alt="">
                        	</div> 
                        -->
					</div>
				</div>

				<div class="col-lg-6 col-md-6">
					<div class="product__details__text">
						<!-- 상품명 -->
						<h3>${getDetail.pName }</h3>
						<!-- 평점 수 -->
						<%-- <c:if test="${getDetail.r_star }">
                        	<div class="product__details__rating">
                            <i class="fa fa-star"></i>                            
                            <span>리뷰 수()</span>
                        </div>
                        </c:if> --%>

						<!-- 상품 가격 -->
						<div class="product__details__price">${getDetail.pPrice }원</div>

						<!-- 상품 설명 -->
						<h6>${getDetail.pDetail }</h6>
						<form method="get" class="count" id='countForm' action="checkoutProduct.do">
							<input type='hidden' name='pNo' value='${getDetail.pNo }' />
							<div class="product__details__quantity">
								<div class="quantity">
									<div class="pro-qty">
										<input type="text" value="1" name="pGet" id="cartCount">
									</div>
								</div>
							</div>
							<button class="primary-btn" id='btnCart'>장바구니로 이동</button>
							<button type="submit" class="primary-btn" id='btnBuy'>구매하기</button>
						</form>
						<a href="addScrap.do?pNo=${getDetail.pNo }" class="heart-icon"><span
							class="icon_heart_alt"></span></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Details Section End -->
	<jsp:include page="../common/userFooter.jsp"></jsp:include>
	<!-- Js Plugins -->
	<script src="/semiProject/resources/assets/js/jquery-1.7.1.js"></script>
	
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
	<script src="/semiProject/resources/assets/js/jquery.magnific-popup.js"></script>

	<!-- Scroll up, nice-select, sticky -->
	<script src="/semiProject/resources/assets/js/jquery.scrollUp.min.js"></script>
	<script
		src="/semiProject/resources/assets/js/jquery.nice-select.min.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.sticky.js"></script>

	<!-- contact js -->
	<script src="/semiProject/resources/assets/js/contact.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.form.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.validate.min.js"></script>
	<script src="/semiProject/resources/assets/js/mail-script.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="/semiProject/resources/assets/js/plugins.js"></script>
	<script src="/semiProject/resources/assets/js/main.js"></script>
	
	<script src="/semiProject/resources/assets/js/jquery-3.3.1.min.js"></script>
	<script src="/semiProject/resources/assets/js/detailbootstrap.min.js"></script>
	<script src="/semiProject/resources/assets/js/detailjquery.nice-select.min.js"></script>
	<script src="/semiProject/resources/assets/js/jquery-ui.min.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.slicknav.js"></script>
	<script src="/semiProject/resources/assets/js/detailmixitup.min.js"></script>
	<script src="/semiProject/resources/assets/js/detailowl.carousel.min.js"></script>
	<script src="/semiProject/resources/assets/js/detailmain.js"></script>
	<script type="text/javascript">
    $('#btnCart').on('click',function(e){
    	if($('#cartCount').val() == '0'){
    		alert('수량을 선택해주시기 바랍니다.')
    		e.preventDefault();
    	} else {
    		$('#countForm').attr('action','addCart.do');
    		$('#countForm').submit();
    	}
    	});

    	$(document).ready(function() {
        	jQuery(function($){
        		  Layout.init();
                  Layout.initOWL();
                  Layout.initTouchspin();
                  Layout.initUniform();
                  Layout.initSliderRange();
        	})

        })
        
	</script>

</body>

</html>