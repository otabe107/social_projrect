<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="/social/js/jquery.js"></script>
<script type="text/javascript" src="/social/js/login.js"></script>
<style>
	.position {
	width: 420px;
	height: 600px;
	margin-top: 200px;
	margin-left: 800px;
	padding: 20px;
	}
	.buttonp{
	margin-top: 2px;
	margin-left: 21%;
	}
	.loginps{
	margin-top: 2px;
	margin-left: 4%;
	}
html, body, h1, h2, h3, h4, h5 {font-family: "Open Sans", sans-serif}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$('#jbtn').click(function(){
		$(location).attr('href', '/social/member/join.cnu/');
	});
	
});
</script>
<body class="w3-theme-l5">
	<div class="w3-col m7">
			<div class="w3-container w3-padding position">
				<h1 class="w3-bar-item w3-padding-large w3-center w3-theme-d4">Login</h1>
					<form method="POST" action="/social/member/loginProc.cnu" class="w3-col w3-center w3-padding w3-card-4" id="frm" name="frm">
					<!-- <label for="id" class="w3-col m2 w3-right-align w3-text-grey"></label> -->
					<input type="text" name="id" id="id" placeholder="이매일 주소 또는 아이디를 입력하세요!"
						class="w3-col m11 w3-input w3-border w3-round-4 loginps">
					<!-- <label for="pw" class="w3-col m2 w3-right-align w3-text-grey">Password : &nbsp;</label>-->
					<input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요!"
						class="w3-col m11 w3-input w3-border w3-round-4 loginps">
					<button type="button" class="w3-col w3-button m7 w3-theme-d6 buttonp" id="btn2">Login</button>
					<button type="button" class="w3-col w3-button m7 w3-theme-d6 buttonp" id="jbtn"><i class="fa fa-pencil"></i> Sign Up</button>
					<button type="button" class="w3-col w3-padding m7 w3-button w3-theme-d4 buttonp" id="btn1">Home</button>
					</form>
			</div>
		<div class="w3-col w3-padding w3-card-4 w3-hide"><span id="msg">${SID} 님은 이미 로그인했습니다!!!</span></div>
	</div>
</body>
</html>