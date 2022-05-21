<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
   
<!DOCTYPE html>
<html lang="en">
   <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title> 상품관리 </title>
        <!-- JQuery -->
       <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
       <!-- datatable 연동 -->
        <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <!-- datatable CSS -->
        <link href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="/semiProject/resources/adminAssets/css/styles.css" rel="stylesheet" />
          <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
          <script type="text/javascript" src="/semiProject/resources/adminAssets/js/admin.js"></script>
    </head>
    <body class="sb-nav-fixed">
       <jsp:include page="../common/adminHeader.jsp"/>
        <div id="layoutSidenav">
            <jsp:include page="../common/adminNavbar.jsp"/>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">상품관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">상품관리</li>
                        </ol>
                        
                             <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                상품추가 그리고 목록 
                            </div><br/>
                           
                            <p> <a href="addProduct.do"><button type="button" class="btn btn-info" id="addbox">상품추가</button></a></p>
                         	
                         	<div id="probox">
                         	<form action='manageProduct.do'>
                         	<select name='searchCon'>
                         		<option value='p_name'>이름</option>
                         		<option value='p_'>브랜드</option>
                        	</select>
                         	<input type="text" placeholder="Search" name='searchKey'>
                         	<input type="submit" value='검색'>
                         	</form>
                         	</div>
                         
                         
                         
                            <div class="card-body">
                             <table id="datatablesSimple">
                                
                                    <thead>
                                        <tr>
                                        	
                                            <th>No</th>
                                            <th>Name</th>
                                           	<th>Price</th>
                                            <th>Detail</th>
                                            <th>Count</th>
                                            <th>Color</th>
                                            <th>CategoryName</th>
                                            <th>Date</th> 
                                            <th>FileName</th>
                                            <th>FileSize</th>
                                        </tr>
                                    </thead>
                                    
       
       
       
       <c:forEach items="${productList }" var="product">
		<tr>
		<td>${product.pNo }</td>
		<td align="left" name="detail"><a href="detailProductView.do?pNo=${product.pNo }&categoryCode=${product.categoryCode}">
		${product.pName }</a></td>
		<td>${product.pPrice }</td>
		<td>${product.pDetail }</td>
		<td>${product.pCount }</td>
		<td>${product.pColor }</td>
		<td>${product.categoryName }</td>
		<td>${product.pDate }</td>
	
		
		<td>
		<c:choose>
		<c:when test="${product.fileSize==0 }">첨부파일 없음</c:when>
		<c:otherwise>
			<img src="/semiProject/resources/imgs/file.png">${product.originFileName }
		</c:otherwise>
		</c:choose>
		</td>
		<td>${product.fileSize }byte</td>
		</tr>
		</c:forEach>
		

</table>

                                
                                    
                                
                            </div>
                        </div>
                    </div>
                </main>
                <jsp:include page="../common/adminFooter.jsp"/>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/semiProject/resources/adminAssets/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="/semiProject/resources/adminAssets/assets/demo/chart-area-demo.js"></script>
        <script src="/semiProject/resources/adminAssets/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    </body>
</html>
