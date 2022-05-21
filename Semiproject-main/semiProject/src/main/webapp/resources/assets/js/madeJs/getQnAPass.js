/**
 * 
 */ 
	function passWord(qNo, qPass) {
		var pass = prompt("비밀번호를 입력하세요","");
		if(pass == qPass){
			location.href="getQnA.do?qNo="+qNo;
		} else {
			alert("비밀번호가 틀렸습니다");
		}
	};	