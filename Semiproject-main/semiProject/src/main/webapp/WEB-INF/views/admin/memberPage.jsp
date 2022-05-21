<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>회원관리</title>
<!-- JQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<!-- datatable 연동 -->
<script
	src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"
	crossorigin="anonymous"></script>
<!-- datatable CSS -->
<link
	href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="/semiProject/resources/adminAssets/css/styles.css"
	rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="/semiProject/resources/adminAssets/js/admin.js"></script>


</head>
<body class="sb-nav-fixed">
	<jsp:include page="../common/adminHeader.jsp" />
	<div id="layoutSidenav">
		<jsp:include page="../common/adminNavbar.jsp" />
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">회원관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">회원관리</li>
					</ol>

					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table me-1"></i> 회원관리
						</div>

						<br />
						<div id="box">
							<form action='memberPage.do'>
								<select name='searchCondition'>
									<option value='customer_Name'>Name</option>
									<option value='customer_Id'>Id</option>
									<option value='customer_Tel'>Tel</option>

								</select> <input type="text" placeholder="Search" name='searchKeyword'>
								<input type="submit" value='검색'>
							</form>
						</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>No</th>
										<th>Name</th>
										<th>Id</th>
										<th>Sex</th>
										<th>Email</th>
										<th>Tel</th>
										<th>Signdate</th>
									</tr>
								</thead>
								<c:forEach items="${memberList }" var="member">
									<tr>
										<td>${member.customerNo }</td>
										<td>${member.customerName }</td>
										<td>${member.customerId }</td>
										<td>${member.customerSex }</td>
										<td>${member.customerEmail }</td>
										<td>${member.customerTel }</td>
										<td>${member.customerSigndate }</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</main>
			<jsp:include page="../common/adminFooter.jsp" />
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/semiProject/resources/adminAssets/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script
		src="/semiProject/resources/adminAssets/assets/demo/chart-area-demo.js"></script>
	<script
		src="/semiProject/resources/adminAssets/assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>

</body>
</html>
