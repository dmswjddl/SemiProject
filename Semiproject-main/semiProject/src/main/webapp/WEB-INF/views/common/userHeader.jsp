<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
<body>

	<header>
		<!-- Header Start -->
		<div class="header-area">
			<div class="main-header header-sticky">
				<div class="container-fluid">
					<div class="menu-wrapper">
						<!-- Logo -->
						<div class="logo">
							<a href="main.do"><img
								src="/semiProject/resources/assets/img/logo/logo.png" alt=""></a>
						</div>
						<!-- Main-menu -->
						<div class="main-menu d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a href="productListPage.do?num=1">쇼핑하러가기</a></li>
									<li><a href="noticeListPage.do">공지사항</a></li>
									<li><a href="QnAListPage.do">Q&A</a></li>
									<li><a href="getMap.do">지도</a></li>
									<li><a href="customerView.do">마이페이지</a></li>
								</ul>
							</nav>
						</div>
						<!-- Header Right -->
						<div class="header-right">
							<ul>
								
								<li><c:choose>
										<c:when test="${sessionScope.login eq null}">
											<a href="login.do"><span class="flaticon-user"> 로그인</span></a>
										</c:when>
										<c:otherwise>
											<a href="logout.do"><span>[ ${login.customerName } ] 로그아웃</span></a>
										</c:otherwise>
									</c:choose></li>
								<li><a href="cartList.do"><span
										class="flaticon-shopping-cart">장바구니</span></a></li>
							</ul>
						</div>
					</div>
					<!-- Mobile Menu -->
					<div class="col-12">
						<div class="mobile_menu d-block d-lg-none"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header End -->
	</header>
</body>
</html>