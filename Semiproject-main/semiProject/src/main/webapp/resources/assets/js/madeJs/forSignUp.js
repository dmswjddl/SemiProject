$(function() {
			$('.check').css('display', 'none');
			
			var regex = /^((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
			var ckEmail = true;
			var ckAddr = true;
			var ckRrn = true;
			var ckTel = true;
			var ckName = true;
			var ckPass = true;
			var ckCk = true;
			var ckId = true;
			var ckPassCk = true;
			
			$('#customerId').focusout(function() { //아이디 길이 유효성검사
					$.ajax({ // AJAX아이디 중복체크
						type : 'post',
						url : 'idcheck.do',
						data : {customerId : $('#customerId').val()},
						contentType : 'application/x-www-form-urlencoded;charset=utf-8',
						success : function(result) {
							$('#idCheckResult').css('display', 'block');
							$('#idCheckResult').html(result);
						},
						error : function(err) {
							alert('실패');
							console.log(err);
						}
					});
			})
			
			$('#passCheck').focusout(function() { //비밀번호,비밀번호확인 동일여부 검사
				var pwd1 = $('#customerPass').val();
				var pwd2 = $('#passCheck').val();
				if (pwd1 != '' && pwd2 == '') {
					null;
				} else if (pwd1 != "" || pwd2 != "") {
					if (pwd1 == pwd2) {
						$("#ckPassCk").css('display', 'none');
						ckPassCk=true;
					} else {
						$("#ckPassCk").css('display', 'inline-block');
						$("#ckPassCk").focus();
						ckPassCk=false;
					}
				}
			})
			
			 

			$('#customerId').click(function(){
				$('#idCheckResult').css('display','none');
			});
			$('#customerPass').focus(function(){
				$('#passCk').css('display','none');
			});
			$('#customerRrn1').focus(function(){
				$('#rrnCk').css('display','none');
			});
			$('#customerEmailF').focus(function(){
				$('#emailCk').css('display','none');
			});
			$('#customerEmailE').focus(function(){
				$('#emailCk').css('display','none');
			});
			$('#customerTel2').focus(function(){
				$('#telCk').css('display','none');
			});
			$('#customerName').focus(function(){
				$('#nameCk').css('display','none');
			});
			$('#findAddr').click(function(){
				$('#addrCk').css('display','none');
			});
			$("#aggrement").change(function(){
				if($('#aggrement').is(":checked")){
		            $('#aggrCk').css('display','none');
		        }
			})
			
			
			$('#confirm').click(function(){					//commit을 했을경우 길이 및 빈공간 체크
				if($('#customerId').val().length > 12 || $('#customerId').val().length < 8){
					$('#idCheckResult').css('display', 'block');
					$('#idCheckResult').html("아이디는 8~12자입니다.");
				
					ckId = false;
				 }
			 	else{
					$('#idCheckResult').css('display', 'none');
		            ckId = true;
				 }
				
				if($('#customerPass').val().length >16 || $('#customerPass').val().length<8){
					$('#passCk').css('display', 'block');
				
					ckPass = false;
				 }
		 		else{
					$('#passCk').css('display', 'none');
	           		 ckPass = true;
				 }
			 if($('#customerName').val()==''){			//이름 유효성체크
		            $('#nameCk').css('display','block');
		           
		            ckName = false;
		        }else{
		            $('#nameCk').css('display', 'none');
		            ckName = true;
		        }
			 if($('#customerEmailE').val() ==''|| $('#customerEmailF').val() ==''|| regex.test($('#customerEmailE').val()) === false){
				 	$("#emailCk").css("display", 'inline-block');
				
					ckEmail = false;
		        }else{
		        	$('#emailCk').css("display", "none");
		        	ckEmail = true;
		        }
			 if($('#cAddr1').val() == ""||$('#crAddr2').val() == ""||$('#cAddr3').val() == ""){
		            $('#addrCk').css('display','block');
		         
		            ckAddr = false;
		        }else{
		            $('#addrCk').css('display', 'none');
		            ckAddr = true;
		        }
			 if($('#customerTel1').val() == ""||$('#customerTel2').val() == ""||$('#customerTel3').val() == ""){
		            $('#telCk').css('display','block');
		          
		            ckTel = false;
		        }else{
		            $('#telCk').css('display', 'none');
		            ckTel = true;
		        }
			 if($('#customerRrn1').val().length==6||$('#customerRrn2').val().length==7){
				 $('#rrnCk').css('display','none');
			
		            ckRrn = true;
		        }else{
		            $('#rrnCk').css('display', 'block');
		            ckRrn = false;
		        }
			 if($('#aggrement').is(":checked")){
				 $('#aggrCk').css('display', 'none');
	            ckCk = true;
	        }else{
	        	$('#aggrCk').css('display','block');
	            ckCk = false;
	        }
			 if(ckCk&&ckRrn&&ckAddr&&ckEmail&&ckName&&ckPass&&ckId&&ckPassCk){
				 $("#crAccount").attr("action", "createAccount.do");
		         $("#crAccount").submit();
		         
			 }
			return false;
			})
		})