<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<<<<<<< HEAD

<title>Insert title here</title>
</head>
<body>


	<div class="col-md-3">
		<div class="col-md-4">
			<span type="" readonly="readonly">${sessionScope.member_infor.member_id }님
				반갑습니다</span> <img src="images/javacan1.gif">
			<div class="col-md-2">
				<form action="/mem_logout">
					<input type="submit" value="로그아웃">
				</form>
				
				<a href="/mem_matching">여기</a>
			</div>
		</div>
	</div>

=======
<title>Insert title here</title>
</head>
<body>


	<div class="col-md-3">
		<div class="col-md-4">
			<a href="/exam/mem/mem_Exam_Main">시험 목록</a>
			<span type="" readonly="readonly">${sessionScope.member_infor.member_id }님
				반갑습니다</span> <img src="images/javacan1.gif">
			<div class="col-md-2">
				<form action="/mem_logout">
					<input type="submit" value="로그아웃">
				</form>
			</div>
		</div>
	</div>
	
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2




</body>
</html>