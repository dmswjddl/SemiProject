<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<jsp:include page="../common/userHeader.jsp"></jsp:include>
	<main>
		<!-- Hero Area Start-->
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
			 <div class='col-md-8'  style="padding-left:15%">
		    	<br><br><h3>구매목록 상세페이지</h3><br>
				<br>
				
				<section id="content">
					<ul class="orderDetail">
						<c:forEach items="${orderDetail}" var="orderDetail">
						<div class="card mb-3" style="max-width: 540px;">
							<div class="row g-0">
								<div class="col-md-4">
									<img src="/semiProject/resources/upload/${orderDetail.storedFileName}" / style="width: 200px; height : 200px;">
								</div>
								<div class="col-md-8">
									<div class="card-body">
										<h5 class="card-title">${orderDetail.pName}</h5>
										<p class="card-text">개당 가격
											<fmt:formatNumber pattern="###,###,###" value="${orderDetail.productPrice}"/> 원</p>
										<p class="card-text">구입 수량 :${orderDetail.productCount}개</p>
										
										<p class="card-text">배송 현황:
											<c:if test="${orderDetail.orderCheck eq 'y'}">배송완료</c:if>
											<c:if test="${orderDetail.orderCheck eq 'n'}">배송중</c:if></p>
										<c:if test="${orderDetail.orderCheck eq 'y'}">
											<c:choose>
												<c:when test="${orderDetail.rCheck == 1}">
													<button style="background-color: black;">
														<a type="button" href="ReviewView.do?orderDetailNumber=${orderDetail.orderDetailNumber}&orderNo=${orderDetail.orderNo}">리뷰보기</a>
													</button>
												</c:when>
												<c:otherwise>
													<button style="background-color: red;">
														<a type="button" href="Review.do?orderDetailNumber=${orderDetail.orderDetailNumber}&orderNo=${orderDetail.orderNo}">리뷰작성</a>
													</button>
												</c:otherwise>
											</c:choose>
										</c:if>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
					</ul>
				</section>
			</div>
		</div>
		<jsp:include page="../common/userFooter.jsp"></jsp:include>
	</main>
	
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
