<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="/semiProject/resources/adminAssets/css/styles.css"
	rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<jsp:include page="../common/adminHeader.jsp"/>
	<div id="layoutSidenav">
		<jsp:include page="../common/adminNavbar.jsp"/>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">카테고리 관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">카테고리 관리</li>
					</ol>
					<div class="row">
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-bar me-1"></i> 카테고리 목록
								</div>
								<div class="card-body">
									<div class="card-header">
										<c:forEach items="${category }" var="item" varStatus="parent">
											<a class="nav-link collapsed categoryCode"
												categoryName="${item.categoryName }"
												data-bs-toggle="collapse"
												categoryCode="${item.categoryCode }"
												data-bs-target="#collapselink${parent.index}"
												aria-expanded="false"
												aria-controls="collapsePages${parent.index}">
												<div class="sb-sidenav-collapse-arrow">
													<i class="fas fa-angle-down"></i>${item.categoryName }
												</div>
											</a>
											<c:forEach items="${dcategory }" var="dcate">
												<c:if test="${dcate.categoryCode eq item.categoryCode}">
													<div class="collapse" id="collapselink${parent.index}"
														aria-labelledby="headingTwo"
														data-bs-parent="#sidenavAccordion">
														<nav class="sb-sidenav-menu-nested nav accordion"
															id="sidenavAccordionPages">
															<a class="nav-link dcateName"
																dcateCode="${ dcate.dCategoryCode}">${dcate.dName }</a>
														</nav>
													</div>
												</c:if>
											</c:forEach>
										</c:forEach>
										<input type="text" id="pCate" class="add" />
									</div>
									<button id="pCategoryWrite" class="btn btn-primary btn-sm">대분류
										추가</button>
									<button id="pCategoryAdd" class="add btn btn-info btn-sm">대분류
										등록</button>
									<button id="pCategoryDelete" class="btn btn-danger btn-sm">대분류
										삭제</button>
								</div>
							</div>
						</div>
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-bar me-1"></i> 하위 카테고리 등록
								</div>
								<div class="card-body">
									<div class="card-header">
										상위 카테고리이름<br /> <span id="categoryName"></span><br /> 하위
										카테고리이름<br /> <input type="text" name="dName" /> <input
											type="hidden" name="categoryCode" value="" /> <input
											type="hidden" name="dCategoryCode" value="" />
									</div>
									<button id="DCategoryAdd" class="btn btn-primary btn-sm">추가</button>
									<button id="DCategoryModify" class="btn btn-info btn-sm">수정</button>
									<button id="DCategoryDelete" class="btn btn-danger btn-sm">삭제</button>
								</div>
							</div>
						</div>
					</div>

				</div>
			</main>
			<jsp:include page="../common/adminFooter.jsp"/>
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
		src="/semiProject/resources/adminAssets/assetsdemo/chart-area-demo.js"></script>
	<script
		src="/semiProject/resources/adminAssets/assetsdemo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script
		src="/semiProject/resources/adminAssets/js/datatables-simple-demo.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
	$(function(){
		
		//대분류 카테고리 추가버튼을 눌렀을때, input폼과 등록버튼 보이기
		
		$('.add').css('display','none');
		$('#pCategoryWrite').click(function(){
			$('.add').css('display','inline-block');
			$(this).css('display','none');
		});
		
		//등록버튼을 눌렀을떄, input폼의 대분류 값이 DB에 등록 및 화면에 나타나지기
		
		$('#pCategoryAdd').click(function(){
			if($('#pCate').val().length==0){
				alert("대분류를 입력해주세요");
				return false;
			} 
			 $.ajax({
				type : 'post',
				url : 'pCateAdd.do',
				data : {categoryName : $('#pCate').val()},
				success :function(){
					alert("대분류가 추가되었습니다.");
					location.reload();
				},
				error: function(err){
					alert("실패");
					console.log(err);
				}
			})  
		});
		
		$('#pCategoryDelete').click(function(){
			if(!$('#categoryName').html()){
				alert("상위 카테고리를 골라주세요");
				return false;
			}
			$.ajax({
				type : 'post',
				url : 'checkChild.do',
				data : {categoryCode : $('input[name=categoryCode]').val()
				},
				success : function(data){
					console.log(data);
					alert(data);
					if(data&&data.length>0){
						if(confirm("하위 카테고리가 있습니다. 하위카테고리까지 전체 삭제하시겠습니까?")){}
						else 
							return false;
						
					}
					$.ajax({
						type : 'post',
						url : 'pDeleteCate.do',
						data : {categoryCode : $('input[name=categoryCode]').val()},
						success: function(){
							alert("카테고리 "+$('#categoryName').html()+"가 삭제되었습니다.");
							location.reload();
						},
						error : function(err){
							alert("삭제실패");
							console.log(err);
						}
					});
				},
				
				error : function(err){
					alert("조회실패");
					console.log(err);
				}
			})
			
		})
		
		$('.dcateName').click(function(){
			$('input[name=dCategoryCode]').attr('value',$(this).attr('dcateCode'));
 			 $.ajax({
				type : 'post',
				url : 'dCateInfo.do',
				data : {dCategoryCode : $(this).attr("dcateCode")},
				success : function(vo){
					
					$('input[name=dName]').attr('value',vo.dName);
				},
				error : function(err){
					alert("실패");
					console.log(err);
				}
			})  
		});
		
		$('#DCategoryAdd').click(function(){
			if(!$('#categoryName').html()||!$('input[name=dName]').val()){
				alert("상위카테고리를 선택후 하위카테고리를 입력해주세요");
				return false;
			}
			$.ajax({
				type : 'post',
				url : 'dCateAdd.do',
				data : {dName : $('input[name=dName]').val(),
						categoryName : $('#categoryName').html(),
						categoryCode : $('input[name=categoryCode]').val()
				},
				success : function(){
					location.reload();
				},
				error : function(err){
					alert("실패");
					console.log(err);
				}
			})
		});
		
		
		$('.categoryCode').click(function(){
			$('#categoryName').html($(this).attr('categoryName'));
			$('input[name=categoryCode]').attr('value',$(this).attr('categoryCode'));
		})
		
		$('#DCategoryModify').click(function(){
			$.ajax({
				type : 'post',
				url : 'dpMoidfyCate.do',
				data : {dName : $('input[name=dName]').val(),
						categoryName : $('#categoryName').html(),
						categoryCode : $('input[name=categoryCode]').val(),
						dCategoryCode : $('input[name=dCategoryCode]').val()
				},
				success : function(){
					location.reload();
				},
				error : function(err){
					alert("실패");
					console.log(err);
				}
			})
		});
		
		
		
		$('#DCategoryDelete').click(function(){
			$.ajax({
				type : 'post',
				url : 'dDeleteCate.do',
				data : {dCategoryCode : $('input[name=dCategoryCode]').val()
				},
				success : function(){
					alert("카테고리 " +$('input[name=dName]').val() + "가 삭제되었습니다.");
					location.reload();
				},
				error : function(err){
					alert("실패");
					console.log(err);
				}
			})
		});
	})
	</script>
</body>
</html>
