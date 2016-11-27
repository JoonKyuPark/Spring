<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div class="col-md-3">
		<div class="col-md-4">
		<a href="exam/etp/etp_Exam_Main">12341</a>
			<span readonly="readonly">${sessionScope.etp_infor.etp_id }님
				반갑습니다</span>
			<div class="col-md-2">
				<form action="/etp_logout" method="post">
					<input type="submit" value="로그아웃">
				</form>
			</div>
		</div>
	</div>



</body>
</html>