<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$(document).tooltip();
	});
	 $( function() {
		    $( "#show-option" ).tooltip({
		      show: {
		        effect: "slideDown",
		        delay: 250
		      }
		    });
		    
		  } ); 
</script>
<style>
</style>
</head>
<body>
	<table>
		<tr>
			<th>스크랩번호</th>
			<th>개인회원번호</th>
			<th>기업회원번호</th>
			<th>인재스크랩제목</th>
			<th>평가및메모</th>
			<th>날짜</th>
		</tr>
		<c:forEach items="${mem_clip_list}" var="etp_Mem_ClipDTO" varStatus="status">
			<tr>
				<td>${etp_Mem_ClipDTO.mem_clip_no}</td>
				<td>${etp_Mem_ClipDTO.member_no}</td>
				<td>${etp_Mem_ClipDTO.etp_no}</td>
				<td><a href="Mem_Resume_ReadForm">${etp_Mem_ClipDTO.mem_clip_title}</a></td>
				<td id="eval_memo"><a id="show-option" href="Etp_Eval_Memo" title="${etp_Mem_ClipDTO.eval_memo}">${etp_Mem_ClipDTO.eval_memo}</a></td>
				<td>${etp_Mem_ClipDTO.mem_clip_date}</td>
			</tr>
		</c:forEach>
	</table>
	

	
</body>
</html>