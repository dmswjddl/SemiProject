<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Tables - SB Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="/semiProject/resources/adminAssets/css/styles.css"
	rel="stylesheet" />
<link href="/semiProject/resources/adminAssets/css/adminCss.css"
	rel="stylesheet" />
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
					<h1 class="mt-4">Tables</h1>

					<!-- 사용자 문의내용 출력칸-->
					<div class="card mb-4">
						<div class="card-header">
							<div>No.${qna.qNo } ${qna.qTitle}</div>
						</div>
						<div>작성일자 : ${qna.qDate}</div>

						<div style="height: 200px;">${qna.qContent}</div>
					</div>

					<!-- 관리자 답변 폼 -->
					<form action="updateQnA.do?qNo=${qna.qNo}" method="post">
						<div class="card mb-4">
							<div class="card-header">
								<div>No.${qna.qNo } ${qna.qTitle}</div>
							</div>
							<textarea cols="30" rows="10" name="qrContent">${qna.qrContent}</textarea>
						</div>
						<button type="submit" class="btn btn-secondary m-2"
							id="btnQnAUpdate">답변등록</button>
						<a href="qnAList.do"><button type="button"
								class="btn btn-secondary m-2" id="btnQnAList">목록보기</button></a>
					</form>
				</div>
		</div>
		</div>

		<jsp:include page="../common/adminFooter.jsp" />
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			crossorigin="anonymous"></script>
		<script src="/semiProject/resources/adminAssets/js/scripts.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
			crossorigin="anonymous"></script>
		<script
			src="/semiProject/resources/adminAssets/js/datatables-simple-demo.js"></script>
</body>
</html>
