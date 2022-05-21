<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
<link href="/semiProject/resources/adminAssets/css/styles.css" rel="stylesheet" />
<link href="/semiProject/resources/adminAssets/css/adminCss.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="/semiProject/resources/adminAssets/js/admin.js"></script>


<script type="text/javascript">
       $(function(){
   		$('.btnShipping').click(function(){
   		 $.ajax({
   				url : 'updateShipping.do',
   				type : 'POST',
   				data :{ 
   				orderCheck : $(this).attr('value'),
   				orderDetailNumber : $(this).attr('odN')
   						},
   				contentType : 'application/x-www-form-urlencoded;charset=utf-8',
   				success : function(result){
   					location.reload();
   				},
   				error : function(err){
   					alert("실패");
   					console.log(err);
   				}
   			}) 
   		})			
   	});
       
       </script>
</head>
<body class="sb-nav-fixed">
	<jsp:include page="../common/adminHeader.jsp"/>
	<div id="layoutSidenav">
		<jsp:include page="../common/adminNavbar.jsp"/>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">Tables</h1>

					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table me-1"></i> 구매품목관리
						</div>

						<div class="card-body">
							<form action="orderList.do" >								
								<div>							
									<select name="searchCondition">
										<option value="order_Detail_Number">주문번호</option>
										<option value="customer_Name">주문자</option>
										<option value="p_name">상품명</option>																			
									</select>
									<input type='text' name='searchKeyword'>
									<input type='submit' value='검색'>
								</div>
							</form>
							<form action="orderCheckList.do">
								<div>
								기타선택 : 
								<label class="checkbox-inline">
									  <input type="checkbox" id="inlineCheckbox1" value="option1" name="checkAll"> 전체
								</label>
								<label class="checkbox-inline">
									  <input type="checkbox" id="inlineCheckbox2" value="option2" name="checkShipping"> 배송중
								</label>
								<label class="checkbox-inline">
									  <input type="checkbox" id="inlineCheckbox3" value="option3" name="checkShippEnd"> 배송완료
								</label>
								</div>
								
								<div>주문일자 : 
								<input type="date" id="date" name="startDate"> ~ <input type="date" id="date" name="endDate">
								<input type='submit' value='검색'>
								</div>
																			
							</form>

							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>주문번호</th>
										<th>주문자</th>
										<th>받는사람</th>
										<th>전화번호</th>
										<th>상품명</th>
										<th>주문합계</th>
										<th>주문일</th>
										<th>배송상태</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${orderList}" var="order">
										<tr>
											<td id="orderNumber" class="testNumber">${order.orderDetailNumber}</td>							
											<td>${order.customerName}</td>
											<td>${order.receiverName}</td>
											<td>${order.receiverTel}</td>
											<td>${order.pName}</td>
											<td>${order.totalPrice}</td>
											<td>${order.orderDate}</td>
										

											<c:choose>

												<c:when test="${order.orderCheck eq 'N'}">
													<td><button type="button"
															class="btn btn-primary m-2 btnShipping" value="${order.orderCheck}" odN="${order.orderDetailNumber}">배송중</button></td>
												</c:when>
												<c:otherwise>
													<td><button type="button"
															class="btn btn-success m-2 btnShipping" value="${order.orderCheck}" odN="${order.orderDetailNumber}">배송완료</button></td>
												</c:otherwise>
											</c:choose>
										</tr>						
									</c:forEach>

								</tbody>
							</table>
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
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<!-- <script src="/semiProject/resources/adminAssets/js/datatables-simple-demo.js"></script> -->
</body>
</html>
