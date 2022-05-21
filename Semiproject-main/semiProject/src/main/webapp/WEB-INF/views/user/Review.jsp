<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Watch shop | eCommers</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
</head>
<body>
	<!--? Preloader Start -->
	<jsp:include page="../common/userHeader.jsp"></jsp:include>		<!-- Hero Area Start-->
		<div class="slider-area ">
			<div class="single-slider slider-height2 d-flex align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-cap text-center">
								<h2>My Page</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<nav class="navbar navbar-dark bg-dark" style=" width: 232px;height: 416px; float:left;">
				      <ul class="navbar-nav" style="">
				       <li class="nav-item">
				       <a class="nav-link active" aria-current="page" href="customerView.do?customerNo=${login.customerNo}">My Info</a></li>
						<li class="nav-item"><a class="nav-link" href="#">My Cart</a></li>
						<li class="nav-item"><a class="nav-link" href="scrap.do?customerNo=${login.customerNo}&num=1">My Scrap</a></li>
						<li class="nav-item"><a class="nav-link disabled" href= "orderList.do?customerNo=${login.customerNo}&num=1">My Order</a></li>
			      </ul>
			</nav>	
				
				<!-- 리뷰 작성 -->
				
			<div class='col-md-5'  style=" padding-left:10%">
			<form action="writeReview.do" method="get">
				<ul>
						<li>
							<div class="thumb">
								<img src="webapp/resources/img/${orderDetail.storedFileName}" />
							</div>
							<div class="row">
								<div class="col-md-8">
									<p>
										<span>상품명</span><h>${orderDetail.pName}</h><br /> 
										<span>개당 가격</span>
										<fmt:formatNumber pattern="###,###,###" value="${orderDetail.productPrice}" />원 <br /> 
										<span>구입 수량</span>${orderDetail.productCount}개<br />
										<input type="hidden" name="pNo" value="${orderDetail.pNo}">
										<input type="hidden" name="orderDetailNumber" value="${orderDetail.orderDetailNumber}">
										<input type="hidden" name="customerNo" value="${orderDetail.customerNo}">
										<input type="hidden" name="rId" value="${login.customerId}">
										<input type="hidden" name="orderNo" value="${param.orderNo}">
									</p>
								</div>
							</div>
						</li>
					</ul>
				<div><br><h3>리뷰작성</h3><br></div>
				<div class="mb-3">
					<br><label for="exampleFormControlInput1" class="form-label"><h3>별점</h3></label> <br>
					<select name="rStar"  id="rStar" class="form-select" aria-label="Default select example">
						<option value='1'>★☆☆☆☆</option>
						<option value='2'>★★☆☆☆</option>
						<option value='3'>★★★☆☆</option>
						<option value='4'>★★★★☆</option>
						<option value='5'>★★★★★</option>
					</select>
					
				</div><br>
				<div class="mb-3 ">
					<br><br><label for="exampleFormControlTextarea1" class="form-label"><h3>리뷰</h3></label><br>
					<textarea name="rContent" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea><br><br>
				</div>
				<div>
				 <a type="button" href="orderListDetail.do?${orderDetail.orderNo}" class="btn btn-primary mb-3"  style="background-color: gray">취소</a>
				 <button type="submit" class="btn btn-primary mb-3">작성</button>
			</div>
			</form>
			</div>
			<jsp:include page="../common/userFooter.jsp"></jsp:include>
		</div>
	<!--? Search model Begin -->
	<div class="search-model-box">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-btn">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input"
					placeholder="Searching key.....">
			</form>
		</div>
	</div>
	<script src="/semiProject/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="/semiProject/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
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
</body>
</html>
