<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

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
	<%-- <table>
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
	</table> --%>
	
	<div class="row text-center">
	
	<c:forEach items="${mem_clip_list}" var="etp_Mem_ClipDTO" varStatus="status">
		<div class="col-md-4">
                <div class="thumbnail">
                    <img src="http://placehold.it/800x500" alt="">
                    <div class="caption">
                        <h3>${etp_Mem_ClipDTO.mem_clip_title}</h3>
                        <p>${etp_Mem_ClipDTO.mem_clip_date}</p>
                        <p>
                            <a href="Mem_Resume_ReadForm" class="btn btn-primary">자세히보기</a> <a href="#" id="show-option" class="btn btn-default" title="${etp_Mem_ClipDTO.eval_memo}">평가및메모</a>
                        </p>
                    </div>
                </div>
            </div>
            </c:forEach>
            
	</div>
	
</body>
</html>