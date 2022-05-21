<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<!-- Head BEGIN -->
<head>
<meta charset="utf-8">
<title>전자기기 통합 판매 플랫폼</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link href="/favicons/manifest.json" rel='manifest' />
<!-- Global styles START -->
<link href="/semiProject/resources/assets/css/listbootstrap.min.css" rel="stylesheet">
<!-- Global styles END -->
<!-- Page level plugin styles START -->
<link href="/semiProject/resources/assets/css/jquery.fancybox.css" rel="stylesheet">
<link href="/semiProject/resources/assets/css/owl.carousel.css" rel="stylesheet">
<link href="/semiProject/resources/assets/css/uniform.default.css" rel="stylesheet"
	type="text/css">
<link
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"
	rel="stylesheet" type="text/css">
<!-- for slider-range -->
<link href="/semiProject/resources/assets/css/rateit.css" rel="stylesheet" type="text/css">
<!-- Page level plugin styles END -->

<!-- Theme styles START -->
<link href="/semiProject/resources/assets/css/components.css" rel="stylesheet">
<link href="/semiProject/resources/assets/css/liststyle.css" rel="stylesheet">
<link href="/semiProject/resources/assets/css/style-shop.css" rel="stylesheet"
	type="text/css">
<link href="/semiProject/resources/assets/css/style-responsive.css" rel="stylesheet">
<link href="/semiProject/resources/assets/css/madeCss/red.css" rel="stylesheet"
	id="style-color">
<link href="/semiProject/resources/assets/css/custom.css" rel="stylesheet">
<!-- Theme styles END -->
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
<!-- Head END -->

<!-- Body BEGIN -->

<body class="ecommerce">
	<jsp:include page="../common/userHeader.jsp"></jsp:include>
	<div class="main">
		<div class="container">
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<!-- BEGIN SIDEBAR -->
				<div class="sidebar col-md-3 col-sm-5">

					<!-- 카테고리 -->
					<!-- 카테고리 -->
					<ul class="list-group margin-bottom-25 sidebar-menu" id="category">
						<c:forEach var="category" items="${category}">
							<li class="list-group-item clearfix dropdown active"><a
								href="#" class="collapsed"> <i class="fa fa-angle-right"></i>${category.categoryName}
							</a> <!-- 중분류 -->
								<ul class="dropdown-menu" style="display: hidden;">
									<c:forEach var='smallCate' items="${smallCate}">
										<c:if
											test="${category.categoryCode eq smallCate.categoryCode }">
											<li class="list-group-item dropdown clearfix active"><a
												href="#" class="collapsed"><i class="fa fa-angle-right"></i>${smallCate.dName }</a>
											</li>
										</c:if>
									</c:forEach>
								</ul></li>
						</c:forEach>
					</ul>

					<div class="sidebar-filter margin-bottom-25">
						<h3>가격 범위</h3>
						<p>
							<label for="amount">설정범위</label> <input type="text" id="amount"
								style="border: 0; color: #f6931f; font-weight: bold;">
						</p>
						<div id="slider-range"></div>
					</div>
				</div>
				<!-- END SIDEBAR -->
				<!-- x CONTENT -->

				<div class="col-md-9 col-sm-7">
					<div class="row list-view-sorting clearfix">
						<div class="col-md-2 col-sm-2 list-view">
							<a href="javascript:;"><i class="fa fa-th-large"></i></a> <a
								href="javascript:;"><i class="fa fa-th-list"></i></a>
						</div>
						<div class="col-md-10 col-sm-10">
							<div class="pull-right"></div>
							<div class="pull-right">
								<label class="control-label">정렬</label> <select
									class="form-control input-sm">
									<option value="#?sort=p.sort_order&amp;order=DESC"
										selected="selected">리뷰 많은 순</option>
									<option value="#?sort=pd.name&amp;order=DESC">추천 많은 순</option>
									<option value="#?sort=p.price&amp;order=DESC">구매 많은 순</option>
									<option value="#?sort=p.price&amp;order=DESC">별점 높은 순</option>
								</select>
							</div>
						</div>
					</div>
					<!-- BEGIN PRODUCT LIST -->
					<div class="row product-list">
						<!-- PRODUCT ITEM START -->
						<c:forEach items="${productListPage}" var='productList'>
                     <div class="col-md-3 col-sm-4 col-xs-12">
                        <div class="product-item">
                           <div class="pi-img-wrapper">
                              <a href="getDetail.do?pNo=${productList.pNo }"> 
                              <img src="/semiProject/resources/upload/${productList.storedFileName }" class="img-responsive" alt="Berry Lace Dress">
                              <img src="${productList.originFileName }" class="img-responsive" alt="Berry Lace Dress">
                              </a>
                           </div>
                           <h3>
                              ${productList.pName}
                           </h3>
                           <div class="pi-price">${productList.pPrice }원</div>
                           <div style="text-align: right;">
                              <a href="cartList.do?p_no=${productList.pNo }"
                                 class="primary-btn">장바구니</a>
                           </div>
                        </div>
                     </div>
                  </c:forEach>
						<!-- PRODUCT ITEM END -->
					</div>
					<!-- END PRODUCT LIST -->
					<!-- 페이징 처리 -->
					<div class="row" style="background-color: black;">
						<c:forEach begin="1" end="${pageNum }" var="num">
							<span> <a href="productListPage.do?num=${num}">${num }</a>
							</span>
						</c:forEach>
					</div>
					<!-- 페이징 처리 끝 -->
				</div>
				<!-- END CONTENT -->
			</div>
			<!-- END SIDEBAR & CONTENT -->
		</div>
	</div>
	<jsp:include page="../common/userFooter.jsp"></jsp:include>
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="/semiProject/resources/assets/js/jquery-migrate.min.js" type="text/javascript"></script>
	<script src="/semiProject/resources/assets/js/listbootstrap.min.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->

	<script src="/semiProject/resources/assets/js/listowl.carousel.min.js" type="text/javascript"></script>
	<!-- slider for products -->
	<script src="/semiProject/resources/assets/js/bootstrap.touchspin.js"
		type="text/javascript"></script>
	<!-- Quantity -->
	<script src="/semiProject/resources/assets/js/jquery.uniform.min.js" type="text/javascript"></script>
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"
		type="text/javascript"></script>
	<!-- for slider-range -->
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
	
	<script src="/semiProject/resources/assets/js/layout.js" type="text/javascript"></script>
	<script type="text/javascript">
	
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
	<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
</html>