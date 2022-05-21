<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	href="assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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
		<!--================CreateAccount Area =================-->
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6">
					<div class="login_part_form">
						<div class="login_part_form_iner">
							<h3>회 원 가 입</h3>
							<form id="crAccount" class="row contact_form" method="post"
								novalidate="novalidate">
								<div class="container">
									<div class="input-form-backgroud row">
										<div class="input-form col-md-12 mx-auto">
											<label for="customerId">ID</label>
											<div class="mb-3">
												<input type="text" class="form-control" id="customerId"
													name="customerId" required> <span
													id="idCheckResult" class="check"></span>
											</div>
											<div class="mb-3">
												<label for="customerPass">비밀번호</label><input type="password"
													class="form-control" id="customerPass" name="customerPass"
													placeholder="" value="" required> <span id="passCk"
													class='check'>비밀번호는 8~16자입니다.</span>
											</div>
											<div class="mb-3">
												<label for="passCheck">비밀번호 확인</label> <input
													type="password" class="form-control" id="passCheck"
													placeholder="" required> <span id="ckPassCk"
													class='check'>비밀번호가 같지 않습니다.</span>
											</div>
											<div class="mb-3">
												<label for="customerName">이름</label> <input type="text"
													class="form-control" id="customerName" name="customerName"
													placeholder="" required>
												<div class="check" id="nameCk">이름을 입력해주세요.</div>
											</div>
											<label>주민등록번호</label>
											<div class="row">
												<div class="col md-6 mb-3">
													<input type="text" class="form-control" id="customerRrn1"
														name="customerRrn1" placeholder="" required>
												</div>
												__
												<div class="col md-6 mb-3">
													<input type="password" class="form-control"
														id="customerRrn2" name="customerRrn2" placeholder=""
														required>
													<div class="check" id="rrnCk">주민등록번호를 입력해주세요</div>
												</div>
											</div>
											<label>E-mail</label>
											<div class="row">
												<div class="col md-6 mb-3">
													<input type="email" class="form-control"
														id="customerEmailF" name="customerEmailF"
														placeholder="user" required>
												</div>
												@
												<div class="col md-6 mb-3">
													<input type="email" class="form-control"
														id="customerEmailE" name="customerEmailE"
														placeholder="example.com" required> <span
														id="emailCk" class="check">이메일을 확인해주세요</span>
												</div>
											</div>
											<label for="tel_1">핸드폰번호</label>
											<div class="row">
											<div class="row">
												<div class="col md-6 mb-3 ex">
													<select id="customerTel1" class="form-control md-12"
														name="customerTel1">
														<option value="010" selected="selected">010</option>
														<option value="011">011</option>
														<option value="016">016</option>
														<option value="017">017</option>
														<option value="018">018</option>
														<option value="019">019</option>
													</select>
												</div>
												<div class="col md-6 mb-3">
												</div>
												</div>
												__
												<div class="col md-3 mb-3">
													<input type="text" class="form-control" id="customerTel2"
														name="customerTel2" placeholder="" required>
												</div>
												__
												<div class="col md-3 mb-3">
													<input type="text" class="form-control" id="customerTel3"
														name="customerTel3" placeholder="" required>
													<div class="check" id="telCk">핸드폰번호를 확인해주세요</div>
												</div>
											</div>
											<div class="row">
												<div class="col md-6 mb-3">
													<input type="text" id="cAddr1" name="cAddr1"
														class="form-control" placeholder="우편번호">
												</div>
												<div class="col md-6 mb-3">
													<input type="button" onclick="sample6_execDaumPostcode()"
														value="우편번호 찾기" id="findAddr">
												</div>
											</div>
											<div class="mb-3">
												<input type="text" id="cAddr2" name="cAddr2"
													class="form-control" placeholder="주소">
											</div>
											<div class="row">
												<span id="guide" style="color: #999; display: none"></span>
												<div class="col md-6 mb-3">
													<input type="text" id="cAddr3" name="cAddr3"
														class="form-control" placeholder="상세주소">
												</div>
												<div class="col md-6 mb-3">
													<input type="text" id="sample6_extraAddress"
														class="form-control" placeholder="참고항목">
												</div>
											</div>
											<div class="check" id="addrCk">주소를 입력해주세요</div>
											<hr class="mb-4">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input"
													id="aggrement" required> <label
													class="custom-control-label" for="aggrement">개인정보
													수집 및 이용에 동의합니다.</label>
												<div class="check" id="aggrCk">체크해주세요.</div>
											</div>
											<div class="mb-4"></div>
											<button class="btn btn-primary btn-lg btn-block"
												type="button" id="confirm">가입 완료</button>

										</div>
									</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--================CreateAccount Area =================-->
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

	<!-- Scroll up, nice-select, sticky -->
	<script src="/semiProject/resources/assets/js/jquery.scrollUp.min.js"></script>
	<script
		src="/semiProject/resources/assets/js/jquery.nice-select.min.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.sticky.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.magnific-popup.js"></script>

	<!-- contact js -->
	<script src="/semiProject/resources/assets/js/contact.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.form.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.validate.min.js"></script>
	<script src="/semiProject/resources/assets/js/mail-script.js"></script>
	<script src="/semiProject/resources/assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="/semiProject/resources/assets/js/plugins.js"></script>
	<script src="/semiProject/resources/assets/js/main.js"></script>

	<!-- 유효성검사 -->
	<script src="/semiProject/resources/assets/js/madeJs/forSignUp.js"></script>


	<!-- Daum 주소찾기 API -->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
								document.getElementById("sample6_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample6_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('cAddr1').value = data.zonecode;
							document.getElementById("cAddr2").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("cAddr3").focus();
						}
					}).open();
		}
	</script>
</body>

</html>