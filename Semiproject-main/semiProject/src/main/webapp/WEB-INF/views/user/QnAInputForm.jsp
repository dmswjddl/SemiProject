<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Watch shop | eCommers</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="/semiProject/resources/assets/img/favicon.ico">
    
    <!-- 공지사항 템플릿 -->
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.2/css/bootstrapValidator.min.css"/>
	<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.2/js/bootstrapValidator.min.js"></script>

    <!-- CSS here -->
    <link rel="stylesheet" href="/semiProject/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/semiProject/resources/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/semiProject/resources/assets/css/flaticon.css">
    <link rel="stylesheet" href="/semiProject/resources/assets/css/slicknav.css">
    <link rel="stylesheet" href="/semiProject/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="/semiProject/resources/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="/semiProject/resources/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/semiProject/resources/assets/css/themify-icons.css">
    <link rel="stylesheet" href="/semiProject/resources/assets/css/slick.css">
    <link rel="stylesheet" href="/semiProject/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="/semiProject/resources/assets/css/style.css">
    <link rel="stylesheet" href="/semiProject/resources/assets/css/madeCss/notice_qna.css">
</head>

<body>
   	<jsp:include page="../common/userHeader.jsp"/>
    <main>        
       <!--? Hero Area Start-->
        <div class="slider-area ">
          <hr/>
        </div>
        <!--? Hero Area End-->
    <!--  -->
    <div class="container">
    <form action="saveQnA.do" method="post"> 	
    	<div class="mb-3">
 			 <label for="exampleFormControlInput1" class="form-label">제목</label>
  			 <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="제목입력" name="qTitle">
		</div>
		
		<div class="mb-3">
 			 <label for="exampleFormControlInput1" class="form-label">작성자</label>
  			 <input type="text" class="form-control" id="exampleFormControlInput1" name="qWriter">
		</div>
		
		<div class="mb-3">
  			<label for="exampleFormControlTextarea1" class="form-label">내용</label>
  			<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="내용입력" name="qContent"></textarea>
		</div>
    	
    	<!-- 비밀번호 입력칸 -->
    	<div class="mb-3">
          <label for="exampleInputPassword1" class="form-label">비밀번호</label>
          <input type="password" class="form-control" id="exampleInputPassword1" name="qPass">
        </div>   
        <!-- end Password -->    
         
    	<button type="submit" class="btn btn-secondary m-2" id="btnQnAWrite">입력</button></a> 
    	<a href="QnAListPage.do"><button type="button" class="btn btn-secondary m-2" id="btnQnAList">목록보기</button></a>    	 
    </form>  
    </div>
    </main>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<jsp:include page="../common/userFooter.jsp"/>

    <script src="/semiProject/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="/semiProject/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="/semiProject/resources/assets/js/popper.min.js"></script>
    <script src="/semiProject/resources/assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="/semiProject/resources/assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="/semiProject/resources/assets/js/owl.carousel.min.js"></script>
    <script src="/semiProject/resources/assets/js/slick.min.js"></script>

    <!-- One Page, Animated-HeadLin -->
    <script src="/semiProject/resources/assets/js/wow.min.js"></script>
    <script src="/semiProject/resources/assets/js/animated.headline.js"></script>
    <script src="/semiProject/resources/assets/js/jquery.magnific-popup.js"></script>

    <!-- Scrollup, nice-select, sticky -->
    <script src="/semiProject/resources/assets/js/jquery.scrollUp.min.js"></script>
    <script src="/semiProject/resources/assets/js/jquery.nice-select.min.js"></script>
    <script src="/semiProject/resources/assets/js/jquery.sticky.js"></script>
    
    <!-- contact js -->
    <script src="/semiProject/resources/assets/js/contact.js"></script>
    <script src="/semiProject/resources/assets/js/jquery.form.js"></script>
    <script src="/semiProject/resources/assets/js/jquery.validate.min.js"></script>
    <script src="/semiProject/resources/assets/js/mail-script.js"></script>
    <script src="/semiProject/resources/assets/js/jquery.ajaxchimp.min.js"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="/semiProject/resources/assets/js/plugins.js"></script>
    <script src="/semiProject/resources/assets/js/main.js"></script>
    </body>
    </html>
 