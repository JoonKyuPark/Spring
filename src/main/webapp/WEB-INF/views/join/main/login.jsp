<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">


</head>
<body>

	<div name="main_menu" class="container">
		<ul class="nav nav-pills">
			<li><a href="../styleMain/main.jsp">홈</a></li>
		</ul>
	</div>
	</div>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="col-md-9"></div>
		<div class="col-md-3">
			<ul class="row nav nav-tabs">
				<li class="active"><a href="#person" data-toggle="tab">개인회원</a></li>
				<li><a href="#coper" data-toggle="tab">기업회원</a></li>
			</ul>
			<div class="tab-content">
				<div class="row tab-pane active" id="person">
					<form action="mem_login" method="post">
						<input type="text" name="member_id" placeholder="아이디"
							required="required"> <input type="password"
							name="member_pwd" placeholder="비밀번호"><br> <input
							type="submit" value="로그인"> <a type="button" href="/join">회원가입</a><br>
							
							<input type="checkbox" value="auto" name="autologin"><span>자동로그인</span>
					</form>
				</div>
				<div class="row tab-pane" id="coper">
					<form action="/etp_login" method="post">
						<input type="text" name="etp_id" placeholder="기업아이디"
							required="required"> <input type="password"
							name="etp_pass" placeholder="비밀번호"><br> <input
							type="submit" value="로그인"> <a type="button" href="/join">회원가입</a>
							<br>
								<input type="checkbox" value="auto" name="autologin"><span>자동로그인</span>
					</form>
				</div>
			</div>

			<div>${sessionScope.etp_infor.etp_id }
				${sessionScope.member_infor.member_id }</div>



		</div>
</body>
</html>