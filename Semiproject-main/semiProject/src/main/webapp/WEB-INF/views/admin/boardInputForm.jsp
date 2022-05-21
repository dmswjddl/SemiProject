<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Dashboard - SB Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="/semiProject/resources/adminAssets/css/styles.css" rel="stylesheet" />
<link href="/semiProject/resources/adminAssets/css/adminCss.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
	<jsp:include page="../common/adminHeader.jsp" />
	<div id="layoutSidenav">
		<jsp:include page="../common/adminNavbar.jsp" />
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">공지사항 작성</h1>
					<form action="saveBoard.do" method="post" enctype="multipart/form-data">
						<div class="form-floating mb-1">제 목</div>
						<div class="form-floating mb-3">
							<input type="text"` class="form-control" placeholder="Leave a comment here"
								id="floatingTextarea" style="height: 15px; align:left" name="boardTitle">
						</div>
						내 용
						<div class="form-floating">
							<textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" name="boardContent" style="height: 300px;"></textarea>						
						</div>
						<input class="form-control" type="file" id="file" name="file">
						<a href="boardList.do"><button type="button"
								class="btn btn-secondary m-2" id="btnList">목록보기</button></a>
						<button type="submit" class="btn btn-secondary m-2" id="btnWrite">작성</button>
					</form>
					</div>
			</main>

			<!-- footer--------------->
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
	<script src="/semiProject/resources/adminAssets/assets/demo/chart-area-demo.js"></script>
	<script src="/semiProject/resources/adminAssets/assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="/semiProject/resources/adminAssets/js/datatables-simple-demo.js"></script>
</body>
</html>
