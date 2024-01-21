<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자기 소개</title>
</head>
<body>
	<form action="home" method="post" name="intro-form">
		<input name="name" placeholder="이름을 입력하세요.">
		<p id="nameResult"></p>
		<input name="age" placeholder="나이를 입력하세요.">
		<p id="ageResult"></p>
		<button id="send" type="button">완료</button>
	</form>
	<!-- 나이를 추가로 입력받은 뒤 서블릿에서 만 나이로 계산하여 화면에 출력 -->

</body>
<script>
	const form = document.querySelector("form[name=intro-form]");
	const name = document.querySelector("input[name=name]");
	const age = document.querySelector("input[name=age]");
	const nameResult = document.getElementById("nameResult");
	const ageResult = document.getElementById("ageResult");
	const button = document.getElementById("send");
	
	button.addEventListener("click", () => {
		if(!name.value){
			nameResult.innerText = "이름을 입력해주세요.";
			nameResult.style.color = "red";
			nameResult.style.fontSize = "1.5rem";
			return;
		}
		
		nameResult.innerText = "멋진 이름입니다!";
		nameResult.style.color = "blue";
		nameResult.style.fontSize = "1.5rem";
		
		if(!age.value){
			ageResult.innerText = "나이를 입력해주세요.";
			ageResult.style.color = "red";
			ageResult.style.fontSize = "1.5rem";
			return;
		}
		
		ageResult.innerText = "좋은 나이입니다!";
		ageResult.style.color = "blue";
		ageResult.style.fontSize = "1.5rem";
		
		form.submit();
	});
	
	
	
	
</script>
</html>