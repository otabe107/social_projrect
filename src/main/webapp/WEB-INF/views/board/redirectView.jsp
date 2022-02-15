<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/social/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#frm').submit();
	});
</script>
</head>
<body>
	<form method="post" action="${PATH}" id="frm" name="frm">
		<input type="hidden" name="nowPage" id="nowPage" value="${nowPage}">
<c:if test="${PATH ne '/social/board/boardList.cnu'}">
		<input type="hidden" name="bno" id="bno" value="${BNO}">
</c:if>
	</form>
</body>
</html>