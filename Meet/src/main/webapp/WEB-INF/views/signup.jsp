<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script>
	function checkID_Sync(){
		// alert("중복확인");
		
		var user_id = document.getElementById("user_id").value;
		
		if(user_id == ""){
			alert("아이디를 입력 해 주세요")
			return;
		}
		var xhttp = new XMLHttpRequest();
		
		xhttp.open("POST", "/checkid/" + user_id, false); //true 비동기, false 동기
		
		xhttp.send();
		
		// 멈추고 결과가 돌아올때까지 기다린다.
		
		if(xhttp.responseText == "OK"){
			check_id = true;
			alert("[Sync]사용가능한 아이디 입니다.");
		}else
			alert("[Sync]이미 등록 된 아이디 입니다.");
		}
	
	function checkID_ASync(){
		
		var user_id = document.getElementById("user_id").value;
		
		if(user_id == ""){
			alert("아이디를 입력해주세요")
			return;
		}
		var xhttp = new XMLHttpRequest();
		
		xhttp.open("POST","/checkid/"+user_id,true);
		
		xhttp.onreadystatechange = function(){
			if(xhttp.readyState == XMLHttpRequest.DONE){
				if(xhttp.status == 200){
					if(xhttp.responseText == "OK"){
						check_id = true;
						alert("[ASync] 사용가능한 아이디 입니다");
					}else
						alert("[ASync] 이미 등록된 아이디 입니다.");
				}
			}
		}
		xhttp.send();
		}
		
	var check_id = false;
	
	function submit(){
		
		//alert("submit()");
		
		var form = document.getElementById("signup_form");
		
		//검증 (validation)
/* 		
		if(!check_id){
			alert("아이디 중복검사!");
			return;
		} */
		if(form.user_id.value == ""){
			alert("아이디를 입력 해 주세요")
			return;
		}
		if(form.user_password.value == ""){
			alert("비밀번호를 입력 해 주세요")
			return;
		}
		if(form.user_name.value == ""){
			alert("이름을 입력해주세요")
			return;
		}
		if(form.user_address.value == ""){
			alert("주소를 입력 해 주세요")
			return;
		}
		if(form.user_phone.value == ""){
			alert("전화번호를 입력 해 주세요")
			return;
		}
		if(check_id == false){
			alert("중복체크를 해주세요")
			return;
		}
		
		form.submit();
	}
	
	function change(){
		check_id = false;
		}	
</script>
</head>
<body>
	<h1>회원가입</h1>
	<div>
		<button onclick="checkID_ASync()">이메일 중복확인</button>
	</div>
	<div>
		<form id="signup_form" action="" method="post">
			<div>
				<label>이메일 :</label>
				<input id="user_id" type="text" name="user_id" onchange="change()"/>
			</div>
			<div>
				<label>비밀번호 : </label>
				<input type="text" name="user_password">
			</div>
			<div>
				<label>이름 :</label>
				<input type="text" name="user_name">
			</div>
			<div>
				<label>주소 :</label>
				<input type="text" name="user_address">
			</div>
			<div>
				<label>전화번호 :</label>
				<input type="text" name="user_phone">
			</div>
		</form>
		<input type="submit" value="회원가입" onclick="submit()"/>
	</div>
</body>
</html>