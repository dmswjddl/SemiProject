$(function(){
$('.check').hide();
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#confirm').click(function(){
    	if( $.trim($("#customderId").val()) == '' ){
            $("#customerId").focus();
            $("#ckId").show();
            return;
        }
    	
    	if($.trim($('#customerPass').val())==''){
    		$('#customerPass').focus();
    		 $("#ckPass").show();
    		return;
    	}
    	
    	if($.trim($('#customerPass').val()) != $.trim($('#passCheck').val())){
    		alert("비밀번호가 일치하지 않습니다..");
    		$('#customerPass').focus();
    		return;
    	}
    	
    	
    	if($.trim($('#userName').val())==''){
    		alert("이름입력해주세요.");
    		$('#userName').foucs();
    		return;
    	}
       
        // 자료를 전송합니다.
        document.userinput.submit();
	});
	
	//아이디 중복체크
	$('#userId').keyup(function(){
        // AJAX
        $.ajax({
        	type : 'post',
        	url : 'idcheck.do',
        	data : { userId : $('#userId').val()},
        	contentType : 'application/x-www-form-urlencoded;charset=utf-8',
        	success : function(result){
        		$('#idCheckResult').html(result);
        	},
        	error : function(){
        		alert('실패');
        	}
        });
       
	})
})
	