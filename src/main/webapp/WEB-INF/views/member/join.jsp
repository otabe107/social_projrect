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
<link rel="stylesheet" type="text/css" href="/social/css/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/social/js/jquery.js"></script>
<script type="text/javascript" src="/social/js/join.js"></script>
<script type="text/javascript" src="/social/js/w3color.js"></script>
<script type="text/javascript">
function loadFile(event){
	  if(event.target.files.length > 0){
	    var src = URL.createObjectURL(event.target.files[0]);
	    var preview = document.getElementById("file-ip-1-preview");
	    preview.src = src;
	    preview.style.display = "block";
	  }
	}
</script>

<style type="text/css">
	.avtimg {
		width: 100px;
		height: 100px;
	}
	.avtbox {
		display: inline-block;
		width: 102px;
		height: 117px;
	}
	#pwmsg, #repwmsg, #avtfr, #mavt, #favt, #idmsg {
		display: none;
	}
	
	.ml50{
	margin-left: 15%;
	margin-top: 1px;
	}
	.idml50{
	margin-left: 22.5%;
	margin-top: 1px;
	}
	.jbpt{
	margin-left: 7%;
	margin-top: 1px;
	
	}
	.box{
	width: 600px;
	height: 30px;
	
	}
	.cbtn{
	margin-top: 1px;
	margin-left: 1px;
	}
</style>
<script type="text/javascript">
</script>
</head>
<body class="w3-theme-l5">
	<div class="w3-content w3-round w3-margin-top mxw400">
		<!-- 타이틀 -->
		<h1 class="w3-bar-item w3-padding-large w3-round w3-center w3-theme-d4 w3-card-4">Beksocial 회원가입</h1>
		<form method="POST" name="frm" id="frm" class="w3-col w3-margin-top w3-round w3-margin-bottom w3-padding w3-card-4">
			<div>
			<!-- <label for="name" class="w3-col s3 w3-right-align w3-margin-top clrgrey ft14 mgb10">회원이름 : </label>-->
				<input type="text" name="name" id="name" placeholder="이름을 작성하세요!" class="w3-col s8 ml50 w3-margin-top mgl10 w3-input w3-border mgb10">
			</div>
			<div>
				<!-- <label for="id" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">아 이 디 : </label>-->
				<div class="w3-col s8 mgl10">
					<input type="text" name="id" id="id" placeholder="아이디를 입력하세요"class="w3-col idml50 w3-input w3-border" style="width: 338px;">
					<div class="w3-col m2 cbtn w3-button w3-theme-d2 w3-left-align" id="idck">id check</div>
					<span class="w3-col mgb10 w3-center" id="idmsg"></span>
				</div>
			</div>
			<div>
				<!-- <label for="pw" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">비밀번호 : </label>-->
				<div class="w3-col s8 mgl10 mgb10 ml50">
					<input type="password" name="pw" id="pw" placeholder="새 비밀번호" class="w3-col w3-input w3-border">
					<span class="w3-col w3-text-red" id="pwmsg"># 비밀번호는 12345 만 가능합니다.</span>
				</div>
			</div>
			<div>
				<!-- <label for="repw" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">pw check : </label>-->
				<div class="w3-col s8 mgl10 mgb10 ml50">
					<input type="password" name="repw" id="repw" placeholder="비밀번호 확인하기 " class="w3-col w3-input w3-border">
					<span class="w3-col w3-text-red" id="repwmsg"># 비밀번호가 일치하지 않습니다.</span>
				</div>
			</div>
			<div>
				<!-- <label for="mail" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">회원메일 : </label>-->
				<input type="text" name="mail" id="mail" placeholder="이매일 주소를 작성하세요" class="w3-col ml50 s8 mgl10 w3-input w3-border mgb10">
			</div>
			<div>
				<!-- <label for="tel" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">전화번호 : </label>-->
				<input type="text" name="tel" id="tel" placeholder="휴대폰 번호를 입력하세요" class="w3-col ml50 s8 mgl10 w3-input w3-border mgb10">
			</div>
			<div>
				<!-- <label class="w3-col s3 w3-right-align clrgrey ft14 mgb10">회원성별 : </label>-->
				<div class="w3-col s8 mgl10 mgb10 w3-center w3-margin-left">
					<div class="w3-half">
						<input type="radio" name="gen" id="mgen" class="w3-radio" value="M"> <label for="mgen"> 남자</label>
					</div>
					<div class="w3-half">
						<input type="radio" name="gen" id="fgen" class="w3-radio" value="F"> <label for="fgen"> 여자</label>
					</div>
				</div>
			</div>
			<div class="w3-col ml50 s8 mgl10 w3-input w3-border mgb10">
				<label>Avatar Image: </label>
				<input type="file" name="ano" id="Avatar" accept="image/*" onchange="loadFile(event)" value="${data.ano}" />				
			</div>
			<br>
			<div class="preview avtboxfr">
   					<img id="file-ip-1-preview">
 			</div>
	
<!--  
			<div id="avtfr">
				<label class="w3-col s3 w3-right-align clrgrey ft14 mgb10">아 바 타 : </label> 
				<div class="w3-col s8 mgl10 mgb10 w3-center">
						<div class="avtboxfr w3-center w3-margin-top" id="mavt">
					<c:forEach var="data" items="${LIST}">
						<c:if test="${data.gen == 'M' }">
						 	<div class="avtbox">
						 		<label for="mavt${idx}">
						 			<img src="/social/img/avatar/${data.avatar}" class="w3-col avtimg">
						 		</label>
						 		<input type="radio" name="ano" id="mavt${data.ano}" value="${data.ano}">
						 	</div>
						 	</c:if>
				 	</c:forEach>
						 </div>
						 <div class="avtboxfr w3-center w3-margin-top" id="favt">
					<c:forEach var="data" items="${LIST}">
						 <c:if test="${data.gen == 'F' }">
						 	<div class="avtbox">
						 		<label for="favt${data.ano}">
						 			<img src="/social/img/avatar/${data.avatar}" class="w3-col avtimg">
						 		</label>
						 		<input type="radio" name="ano" id="favt${data.ano}" value="${data.ano}">
						 	</div>
						 </c:if>
				 	</c:forEach>
				 		</div>
					</div>
					<c:forEach var="idx" begin="1" end="3">
						 	<div class="avtbox">
						 		<label for="mavt${idx}">
						 			<img src="/kingdom/img/avatar/img_avatar${idx}.png" class="w3-col avtimg">
						 		</label>
						 		<input type="radio" name="avt" id="mavt${idx}" value="${idx}">
						 	</div>
				 	</c:forEach>
						 <div class="avtboxfr w3-center w3-margin-top" id="favt">
					<c:forEach var="idx" begin="4" end="6">
						 	<div class="avtbox">
						 		<label for="favt${idx}">
						 			<img src="/kingdom/img/avatar/img_avatar${idx}.png" class="w3-col avtimg">
						 		</label>
						 		<input type="radio" name="avt" id="favt${idx}" value="${idx}">
						 	</div>
				 	</c:forEach>
				 		</div>
-->	
				<div class="w3-theme-orange m2 w3-hover-orange w3-button w3-right" id="rbtn">reset</div> 
		</form>
	</div>
			
		
		<!-- 버튼 태그 -->
			<div class="w3-content w3-margin-top box">
				<div class="w3-col jbpt w3-theme-d4 w3-round w3-hover-aqua w3-button fa fa-pencil" id="jbtn">Sign up</div> 
				<div class="w3-col jbpt w3-theme-d1 w3-round w3-hover-lime w3-button" id="hbtn">home</div> 
			</div>
	
</body>
</html>