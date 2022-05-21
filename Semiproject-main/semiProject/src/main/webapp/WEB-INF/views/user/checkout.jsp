<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Watch shop | eCommers</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="/semiProject/resources/assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/flaticon.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/slicknav.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/animate.min.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/magnific-popup.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/fontawesome-all.min.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/themify-icons.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/slick.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/nice-select.css">
<link rel="stylesheet"
	href="/semiProject/resources/assets/css/style.css">

</head>

<body>

	<jsp:include page="../common/userHeader.jsp"/>
	<main>
		<!-- Hero Area Start-->
		<div class="slider-area ">
			<div class="single-slider slider-height2 d-flex align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-cap text-center">
								<h2>구 매</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--================Checkout Area =================-->
		<section class="checkout_area section_padding">
			<c:choose>
				<c:when test="${cart eq null }">
					<form action="pBuy.do" method="POST" id="buy">
				</c:when>
				<c:otherwise>
					<form action="cartBuy.do" method="POST" id="buy">
				</c:otherwise>
			</c:choose>
			<div class="container">
				<div class="returning_customer">
					<div class="check_title">
						<h2>회 원  정 보</h2>
						<input type="hidden" name="customerNo" value="${login.customerNo}" />

					</div>
					<!-------------- customerInFo start ----------------->
					<div class="row">
						<div class="col-md-3 form-group p_star">
							<span>이 름</span>
						</div>
						<div class="col-md-3 form-group p_star">
							<span>전 화 번 호</span>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 form-group p_star">
							<input type="text" class="form-control"
								value="${login.customerName }">
						</div>
						<div class="col-md-3 form-group p_star">
							<input type="text" class="form-control"
								value="${login.customerTel }" />
						</div>
					</div>
					<!------------------ customerInfo End ---------------------->
				</div>
				<!------------- shipping Info Start --------------->
				<div class="shippingInfo_area">
					<div class="check_title">
						<h2>배 송 정 보</h2>
					</div>
					<div class="col-md-12 form-group p_start"></div>
					<div class="col-md-6 form-group p_star">
						<h3>배 송   주 소</h3>
					</div>
					<div class="row">
						<div class="col-md-1 form-group p_star"></div>
						<div class="col-md-5 form-group p_star">
							<input type="button" class="selAddr" id="btnUaddr"
								value="기존 주소">
						</div>
						<div class="col-md-1 form-group p_star"></div>
						<div class="col-md-5 form-group p_star">
							<input type="button" class="selAddr" id="btnOaddr"
								value="새로운 주소">
						</div>
					</div>
					<div class="col-md-12 form-group p_star">
						<div class="row">
							<!---------------- User Address파트시작 ---------------->
							<div class="col-md-6 uAddr">
								<div class="col-md-6 form-group p_star">
									<input type="text" id="addr1" name="addr1" class="form-control"
										value="${login.cAddr1}">
								</div>
								<div class="col-md-11 form-group p_star">
									<input type="text" id="addr2" name="addr2" class="form-control"
										value="${login.cAddr2}">
								</div>
								<div class="row">
									<div class="col-md-5 form-group p_star ex">
										<input type="text" id="addr3" name="addr3"
											class="form-control" value="${login.cAddr3}">
									</div>
									<div class="col-md-5 form-group p_star">
										<input type="text" id="sample6_extraAddress"
											class="form-control" placeholder="참고항목">
									</div>
								</div>
							</div>
							<!---------------- User Address 파트 끝  ------------>
							<!---------------- Other Address파트시작 ---------------->
							<div class="col-md-6 oAddr">
								<div class="row">
									<div class="col-md-5 form-group p_star ex">
										<input type="text" id="oAddr1" name="addr1"
											class="form-control" placeholder="우편번호">
									</div>
									<div class="col-md-5 form-group p_star">
										<input type="button" onclick="sample6_execDaumPostcode()"
											value="우편번호 찾기" id="findAddr">
									</div>
								</div>
								<div class="col-md-11 form-group p_star">
									<input type="text" id="oAddr2" name="addr2"
										class="form-control" placeholder="주소">
								</div>
								<div class="row">
									<div class="col-md-5 form-group p_star ex">
										<input type="text" id="oAddr3" name="addr3"
											class="form-control" placeholder="상세주소">
									</div>
									<div class="col-md-5 form-group p_star">
										<input type="text" id="sample6_OextraAddress"
											class="form-control" placeholder="참고항목">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 form-group p_star">
						<h3>받 는   사 람</h3>
					</div>
					<div class="row">
						<div class="col-md-1 form-group p_star"></div>
						<div class="col-md-5 form-group p_star">
							<input type="button" class="selReceiverInfo" id="btnUInfo"
								value="회원 정보">
						</div>
						<div class="col-md-1 form-group p_star"></div>
						<div class="col-md-5 form-group p_star">
							<input type="button" class="selReceiverInfo" id="btnOInfo"
								value="다른 사람">
						</div>
					</div>
					<div class="col-md-12 form-group p_star">
						<div class="row">
							<!---------------- User Information파트시작 ---------------->
							<div class="col-md-6 uInfo">
								<div class="row">
									<div class="col-md-5 form-group p_star ex">
										<span>받는 사람</span>
									</div>
									<div class="col-md-5 form-group p_star">
										<span>받는 사람 번호</span>
									</div>
								</div>
								<div class="row">
									<div class="col-md-5 form-group p_star ex">
										<input type="text" id="receiverName" name="receiverName"
											class="form-control" value="${login.customerName}">
									</div>
									<div class="col-md-5 form-group p_star">
										<input type="text" id="receiverTel" name="receiverTel"
											class="form-control" value="${login.customerTel}">
									</div>
								</div>
							</div>
							<!---------------- User Information 파트 끝  ------------>
							<!---------------- Other Information파트시작 ---------------->
							<div class="col-md-6 oInfo">
								<div class="row">
									<div class="col-md-5 form-group p_star ex">
										<span>받는 사람</span>
									</div>
									<div class="col-md-5 form-group p_star">
										<span>받는 사람 번호</span>
									</div>
								</div>
								<div class="row">
									<div class="col-md-5 form-group p_star ex">
										<input type="text" id="receiverName" name="receiverName"
											class="form-control">
									</div>
									<div class="col-md-5 form-group p_star">
										<input type="text" id="receiverTel" name="receiverTel"
											class="form-control" placeholder="010-xxxx-yyyy">
									</div>
								</div>
							</div>
							<!---------------- Other Information파트 끝 ---------------->
						</div>
					</div>
				</div>

				<!---------------- Shipping Information End ---------------->
				<!---------------- checkout_detail start------------------->
				<div class="checkout_details">
					<!---------------- 구매할 상품목록 start------------------->
					<!--***********************product의 pCount를 파라미터값으로 받아오기 Line 310 345 등등 pNo도 받아오기****************-->
					<div class="col-lg-12">
						<h3>구매 품목</h3>
						<table class="table">
							<tr>
								<td>상품사진</td>
								<td>상품이름</td>
								<td>가격</td>
								<td>수량</td>
							</tr>
							<c:choose>
								<c:when test="${cart eq null }">
									<tr>
										<td><img src='/semiProject/resources/upload/${product.storedFileName }' width='200' height='200' name="storedFileName" /></td>
										<td>${product.pName}</td>
										<td><input type="hidden" name="productPrice" value="${product.pPrice}"/>${product.pPrice}</td>
										<td><input type="hidden" name="pGet" value="${pGet}" />x ${pGet}<input
											type="hidden" name="pNo" value="${product.pNo }" /></td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${cart}" var="cart" varStatus="status">
										<tr>
											<td><img src='/semiProject/resources/upload/${cart.storedFileName }' width='200' height='200' name="coList[${status.index }].storedFileName"/></td>
											<td>${cart.pName}</td>
											<td><input type="hidden" name="coList[${status.index }].productPrice"
												value="${cart.pPrice}" />${cart.pPrice}</td>
											<td><input type="hidden" name="coList[${status.index }].productCount" 
												value="${cart.cartCount}" />
												x ${cart.cartCount} 
												<input type="hidden" name="coList[${status.index }].pNo"
												value="${cart.pNo }" />
												<input type="hidden" name="coList[${status.index }].cartNo" value="${cart.cartNo }"/>
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</table>
					</div>
					<!---------------- 구매할 상품목록 End------------------->
					<div class="col-lg-12"></div>
					<!---------------- 결제방식 및 Bill Start  --------------->
					<div class="col-lg-12">
						<!---------------Bill및 결제진행버튼  ------------->
						<div class="col-lg-12">
							<div class="order_box">
								<h2>주문서</h2>
								<ul class="list">
									<li><a href="#">상품<span>총</span>
									</a></li>
									<c:set var="total" value="0" />
									<c:choose>
										<c:when test="${cart eq null }">
											<c:set var="total"
												value="${total+(product.pPrice * pGet) }" />
											<li><a href="#">${product.pName }<span
													class="middle">x${pGet }</span> <span
													class="last"><c:out
															value="${product.pPrice * pGet}" />원</span>
											</a></li>
										</c:when>
										<c:otherwise>
											<c:forEach items="${cart }" var="cart">
												<c:set var="total"
													value="${total+(cart.pPrice * cart.cartCount) }" />
												<li><a href=""> ${cart.pName } <span class="middle">x${cart.cartCount}</span>
														<span class="last"><c:out
																value="${cart.pPrice * cart.cartCount }" /></span>
												</a></li>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</ul>
								<ul class="list list_2">
									<li><a href="#">합계 : <span class="last"><c:out
													value="${total}" /> 원</span>
									</a></li>
								</ul>
								<div class="creat_account">
									<input type="checkbox" id="aggrement" name="selector" /> <label
										for="f-option4">I’ve read and accept the </label> <a href="#">terms
										& conditions*</a><div class="check" id="aggrCk">체크해주세요.</div>
								</div>
								<button type="button" class="btn_3 xs" id="confirm">결 제 하 기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			</form>
		</section>
	</main>
	<jsp:include page="../common/userFooter.jsp"/>
	<!-- Search model end -->

	<!-- JS here -->
	<script src="/semiProject/resources/assets/js/jquery-1.7.1.js"></script>
	
	<script
		src="/semiProject/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script
		src="/semiProject/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
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

	<!-- Scroll up, nice-select, sticky -->
	<script src="/semiProject/resources/assets/js/jquery.scrollUp.min.js"></script>
	<script
		src="/semiProject/resources/assets/js/jquery.nice-select.min.js"></script>
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

	<!-- 만든 js파일 -->
	<script src="/semiProject/resources/assets/js/madeJs/inputReceiverInfo.js"></script>
	<!-- Daum 주소찾기 API -->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script>
		$(function(){
			$('.check').css('display', 'none');
			var ckCk = true;
			$("#aggrement").change(function(){
				if($('#aggrement').is(":checked")){
		            $('#aggrCk').css('display','none');
		        }
			})
			$('#confirm').click(function(){	
				if($('#aggrement').is(":checked")){
					 $('#aggrCk').css('display', 'none');
		            ckCk = true;
		        }else{
		        	$('#aggrCk').css('display','block');
		            ckCk = false;
		        }
				if(ckCk){        
					$("#buy").submit();
				}
				return false;
			})
		})
	</script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document
										.getElementById("sample6_OextraAddress").value = extraAddr;

							} else {
								document
										.getElementById("sample6_OextraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('oAddr1').value = data.zonecode;
							document.getElementById("oAddr2").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("oAddr3").focus();
						}
					}).open();
		}
	</script>
</body>
</html>