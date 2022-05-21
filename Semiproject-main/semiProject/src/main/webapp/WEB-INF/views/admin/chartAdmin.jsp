<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
					<h1 class="mt-4">차트 조회</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">차트 조회</li>
					</ol>
					<div class="row">
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-area me-1"></i> 연령별 성비 매출
								</div>
								<div class="card-body">
									<div id="barchart" style="width: 600px; height: 400px;"></div>
								</div>
							</div>
						</div>
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-bar me-1"></i> 카테고리별 구매건
								</div>
								<div class="card-body">
									<div id="piechart" style="width: 700px; height: 500px;"></div>

								</div>
							</div>
						</div>
					</div>

					<div class="col-xl-12">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-area me-1"></i> 월별 매출
							</div>
							<div id="graphchart" style="width: 100%; height: 300px"></div>
						</div>
					</div>
					<div class="col-xl-12">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-bar me-1"></i> 일별 매출 <select
									id="sel_month">
									<c:forEach var="item" items="${graphDay }" begin="1" end="12"
										step="1" varStatus="status">
										<c:choose>
											<c:when test="${status.count eq item.jspMonth}">
												<option value="${status.count }" name="dbMonth"
													selected="selected">${status.count }월</option>
											</c:when>
											<c:otherwise>
												<option value="${status.count }" name="dbMonth">${status.count }월</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</select>
								<button id="click_month">선택</button>
							</div>
							<div class="card-body">
								<div id="graphdaychart" style="width: 100%; height: 300px"></div>
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
		src="/semiProject/resources/adminAssets/assets/demo/chart-area-demo.js"></script>
	<script
		src="/semiProject/resources/adminAssets/assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script
		src="/semiProject/resources/adminAssets/js/datatables-simple-demo.js"></script>

	<!---------------구글차트 API  ----------->
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script src="/semiProject/resources/assets/js/jquery-1.7.1.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
 	$(function(){
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(pieChart);
      google.charts.setOnLoadCallback(barChart);
      google.charts.setOnLoadCallback(graphChart);
      google.charts.setOnLoadCallback(graphDayChart);
      //파이차트
      function pieChart() {
		 var data = new google.visualization.DataTable();
	        data.addColumn('string', '카테고리');
	        data.addColumn('number', '구매 건 수');
			data.addRows([
				<c:forEach items="${pie}" var="item">
				['${item.categoryName}', ${item.pieCount}] ,
				</c:forEach>
				]);
         	// 위에 list나 변수를 선언하고 alert 자리에 담으면 차례대로 값을 받는다.
     

        var options = {
          title: '카테고리별 구매건'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
        
      }
      
	  //막대그래프
      function barChart() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['연령대', '남자','여자'],
          <c:forEach items="${bar}" var="item">
          ['${item.age}', ${item.menCount}, ${item.womenCount}],
          </c:forEach>
        ]);

        var options = {
          title : '연령대 남녀 구매 건수',
          vAxis: {title: '구매 건수'},
          hAxis: {title: '남녀 성비'},
          seriesType: 'bars'
        };

        var chart = new google.visualization.ComboChart(document.getElementById('barchart'));
        chart.draw(data, options);
      }
      
	  //꺾은선 그래프(월별 매출)
	  function graphChart(){
		  var data = google.visualization.arrayToDataTable([
	          ['월', '매출액'],
	          <c:forEach items="${graph}" var="item">
	          ['${item.orderMonth}',${item.graphSumPrice}],
	          </c:forEach>
	        ]);

	        var options = {
	          title: '월별 매출',
	          legend: { position: 'bottom' }
	        };

	        var chart = new google.visualization.LineChart(document.getElementById('graphchart'));

	        chart.draw(data, options);
	      }
	  function graphDayChart(){
		  var data = google.visualization.arrayToDataTable([
	          ['일', '매출액'],
	          <c:forEach items="${graphDay}" var="item">
	          ['${item.orderDay}',${item.daySum}],
	          </c:forEach>
	        ]);
	        var options = {
	          title: '일별 매출',
	          legend: { position: 'bottom' }
	        };
		  
		        var options = {
		          title: '일별 매출',
		          legend: { position: 'bottom' }
		        };
			
		        var chart = new google.visualization.LineChart(document.getElementById('graphdaychart'));

		        chart.draw(data, options);
		      } 	
	  //꺾은선 그래프(월당 일별 매출)
 	  	$('#click_month').click(function(){
	  		console.log($(sel_month).val());
	  		 $.ajax({
	  			type :'post',
	  			url : 'daycharts.do',
	  			data : {dbMonth : $(sel_month).val()},
	  			datatype : "json",
	  			success :  function(graphDay){
	  				 google.charts.load('current', {'packages':['corechart']});
	  				google.charts.setOnLoadCallback(ajaxCharts(graphDay));
	  				
	  			}	  			,
	  		      error: function(err){
	  		    	  alert("실패");
	  		    	  console.log(err);
	  		      }
	  				
	  			}) 
	  		})
	  	function ajaxCharts(graphDay){
		  var data = new google.visualization.DataTable();
		  
		  data.addColumn('string','일');
		  data.addColumn('number','매출액');
		  
		  var dataRow=[];
		  for(var i =0; i<graphDay.length; i++){
	 	  		dataRow=[graphDay[i].orderDay,graphDay[i].daySum];
	 	  		data.addRow(dataRow);
		  }
	        var options = {
	          title: '일별 매출',
	          legend: { position: 'bottom' }
	        };
		  
		        var options = {
		          title: '일별 매출',
		          legend: { position: 'bottom' }
		        };
			
		        var chart = new google.visualization.LineChart(document.getElementById('graphdaychart'));

		        chart.draw(data, options);
		    } 	
		          
		   
	  })
    </script>
</body>
</html>