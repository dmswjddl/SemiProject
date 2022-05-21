<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="layoutSidenav_nav">
		<nav class="sb-sidenav accordion sb-sidenav-dark"
			id="sidenavAccordion">
			<div class="sb-sidenav-menu">
				<div class="nav">
					<div class="sb-sidenav-menu-heading">차트</div>
					<a class="nav-link" href="chartAdmin.do">
						<div class="sb-nav-link-icon">
							<i class="fas fa-chart-area"></i>
						</div> 차트 조회
					</a>
					<div class="sb-sidenav-menu-heading">관리</div>

					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
						data-bs-target="#collapsePages" aria-expanded="false"
						aria-controls="collapsePages">
						<div class="sb-nav-link-icon">
							<i class="fas fa-book-open"></i>
						</div> 관리
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapsePages"
						aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav accordion"
							id="sidenavAccordionPages">
							<a class="nav-link" href="manageProduct.do"> 상품관리 </a> <a class="nav-link"
								href="memberPage.do"> 회원관리 </a> <a class="nav-link" href="cateAdmin.do">
								카테고리관리 </a> <a class="nav-link" href="orderList.do">구매품목관리</a>

						</nav>
					</div>
					<div class="sb-sidenav-menu-heading">서비스</div>
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
						data-bs-target="#collapseLayouts" aria-expanded="false"
						aria-controls="collapseLayouts">
						<div class="sb-nav-link-icon">
							<i class="fas fa-columns"></i>
						</div> 서비스
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapseLayouts"
						aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="boardList.do">공지사항</a> <a
								class="nav-link" href="qnAList.do">Q&A</a>
						</nav>
					</div>

				</div>
			</div>
			<div class="sb-sidenav-footer">
				<div class="small">Logged in as: ${adminLogin.adminId}</div>
				Start 
			</div>
		</nav>
	</div>
</body>
</html>