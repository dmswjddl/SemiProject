<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Tables - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="/semiProject/resources/adminAssets/css/styles.css" rel="stylesheet" />
        <link href="/semiProject/resources/adminAssets/css/adminCss.css" rel="stylesheet" />
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
                        <h1 class="mt-4">Tables</h1>                      
                      
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                문의사항 목록
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th width="20">No</th>
                                            <th >Title</th>
                                            <th width="100">Date</th>
                                            <th width="100">Writer</th>
                                            <th width="100">답변여부</th>      
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
	                                     <c:forEach items="${qnAList}" var="qna">
											<tr>
												<td text-align="center">${qna.qNo}</td>
												<td align="left"><a href="getQnA.do?qNo=${qna.qNo}">${qna.qTitle}</a></td>
												<td text-align="center">${qna.qDate}</td>	
												<td>${qna.qWriter}</td>																							
											<td>
												<c:choose>
													<c:when test="${empty qna.qrContent}">미답변</c:when>
														<c:otherwise>답변완료</c:otherwise>											
												</c:choose>
											</td>										
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/semiProject/resources/adminAssets/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="/semiProject/resources/adminAssets/js/datatables-simple-demo.js"></script>
    </body>
</html>
