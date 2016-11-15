
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Bootstrap ../../../resources/css/resume/bootstrap/css/bootstrap.css-->
<link href="../../../resources/css/resume/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../../../resources/css/resume/bootstrap/css/custom2.css" rel="stylesheet">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="../../../resources/css/resume/bootstrap/css/sb-admin.css" rel="stylesheet">

<link href="../styleMyPage/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
	
<title>마이페이지</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/vendor.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/flat-admin.css">
<!-- Theme -->
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/theme/blue-sky.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/theme/blue.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/theme/red.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/resume/bootstrap/css/theme/yellow.css">

</head>
<body>
	<div class="app app-default">

		<aside class="app-sidebar" id="sidebar">
		<div class="sidebar-header">
			<button type="button" class="sidebar-toggle">
				<i class="fa fa-times"></i>
			</button>
		</div>
		<div class="sidebar-menu">
			<ul class="sidebar-nav">
				<li><a href="./index.html">
						<div class="icon">
							<i class="fa fa-tasks" aria-hidden="true"></i>
						</div>
						<div class="title">Dashboard</div>
				</a></li>
				<li class="dropdown active"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">
						<div class="icon">
							<i class="fa fa-file-o" aria-hidden="true"></i>
						</div>
						<div class="title">이력서</div>
				</a>
					<div class="dropdown-menu">
						<ul>
							<li class="section"><i class="fa fa-file-o"
								aria-hidden="true"></i> 이력서</li>
							<li><a href="../Member_Resume/Member_Resume_Reg.jsp">이력서
									등록</a></li>
							<li><a href="../Member_Resume/Member_Resume_List.jsp">이력서
									관리</a></li>
						</ul>
					</div></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">
						<div class="icon">
							<i class="fa fa-cube" aria-hidden="true"></i>
						</div>
						<div class="title">입사지원</div>
				</a>
					<div class="dropdown-menu">
						<ul>
							<li class="section"><i class="fa fa-file-o"
								aria-hidden="true"></i>입사지원</li>
							<li><a href="../Member_Join_Receive/Member_Join_Receive_Form.jsp">입사지원 현황</a></li>
							<li><a>스크랩한 채용정보</a></li>
							<li><a>스크랩한 기업정보</a></li>
							<li><a href="../Member_Recruit_Log/Member_Recruit_Log_List.jsp">최근 본 채용정보</a></li>
						</ul>
					</div></li>
				<li class="dropdown "><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">
						<div class="icon">
							<i class="fa fa-cube" aria-hidden="true"></i>
						</div>
						<div class="title">맞춤채용</div>
				</a>
					<div class="dropdown-menu">
						<ul>
							<li class="section"><i class="fa fa-file-o"
								aria-hidden="true"></i>맞춤채용</li>
							<li><a>스마트 매칭</a></li>
							<li><a>맞춤채용정보</a></li>
						</ul>
					</div></li>
				<li><a href="../Member_Mypage/Member_Info_Update.jsp">
						<div class="icon">
							<i class="fa fa-tasks" aria-hidden="true"></i>
						</div>
						<div class="title">회원정보수정</div>
				</a></li>
			</ul>
		</div>
		<div class="sidebar-footer">
			<ul class="menu">
				<li><a href="/" class="dropdown-toggle" data-toggle="dropdown">
						<i class="fa fa-cogs" aria-hidden="true"></i>
				</a></li>
				<li><a href="#"><span
						class="flag-icon flag-icon-th flag-icon-squared"></span></a></li>
			</ul>
		</div>
		</aside>

		<script type="text/ng-template" id="sidebar-dropdown.tpl.html">
  <div class="dropdown-background">
    <div class="bg"></div>
  </div>
  <div class="dropdown-container">
    {{list}}
  </div>
</script>
		<div class="app-container">

			<nav class="navbar navbar-default" id="navbar">
			<div class="container-fluid">
				<div class="navbar-collapse collapse in">
					<ul class="nav navbar-nav navbar-mobile">
						<li>
							<button type="button" class="sidebar-toggle">
								<i class="fa fa-bars"></i>
							</button>
						</li>
						<li class="logo"><a class="navbar-brand" href="#"><span
								class="highlight">Flat v3</span> Admin</a></li>
						<li>
							<button type="button" class="navbar-toggle">
								<img class="profile-img" src="../images/profile_img.png">
							</button>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-left">
						<li class="navbar-search hidden-sm"><input id="search"
							type="text" placeholder="Search..">
							<button class="btn-search">
								<i class="fa fa-search"></i>
							</button></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown notification"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown">
								<div class="icon">
									<i class="fa fa-shopping-basket" aria-hidden="true"></i>
								</div>
								<div class="title">New Orders</div>
								<div class="count">0</div>
						</a>
							<div class="dropdown-menu">
								<ul>
									<li class="dropdown-header">Ordering</li>
									<li class="dropdown-empty">No New Ordered</li>
									<li class="dropdown-footer"><a href="#">View All <i
											class="fa fa-angle-right" aria-hidden="true"></i></a></li>
								</ul>
							</div></li>
						<li class="dropdown notification warning"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown">
								<div class="icon">
									<i class="fa fa-comments" aria-hidden="true"></i>
								</div>
								<div class="title">Unread Messages</div>
								<div class="count">99</div>
						</a>
							<div class="dropdown-menu">
								<ul>
									<li class="dropdown-header">Message</li>
									<li><a href="#"> <span
											class="badge badge-warning pull-right">10</span>
											<div class="message">
												<img class="profile" src="https://placehold.it/100x100">
												<div class="content">
													<div class="title">"Payment Confirmation.."</div>
													<div class="description">Alan Anderson</div>
												</div>
											</div>
									</a></li>
									<li><a href="#"> <span
											class="badge badge-warning pull-right">5</span>
											<div class="message">
												<img class="profile" src="https://placehold.it/100x100">
												<div class="content">
													<div class="title">"Hello World"</div>
													<div class="description">Marco Harmon</div>
												</div>
											</div>
									</a></li>
									<li><a href="#"> <span
											class="badge badge-warning pull-right">2</span>
											<div class="message">
												<img class="profile" src="https://placehold.it/100x100">
												<div class="content">
													<div class="title">"Order Confirmation.."</div>
													<div class="description">Brenda Lawson</div>
												</div>
											</div>
									</a></li>
									<li class="dropdown-footer"><a href="#">View All <i
											class="fa fa-angle-right" aria-hidden="true"></i></a></li>
								</ul>
							</div></li>
						<li class="dropdown notification danger"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown">
								<div class="icon">
									<i class="fa fa-bell" aria-hidden="true"></i>
								</div>
								<div class="title">System Notifications</div>
								<div class="count">10</div>
						</a>
							<div class="dropdown-menu">
								<ul>
									<li class="dropdown-header">Notification</li>
									<li><a href="#"> <span
											class="badge badge-danger pull-right">8</span>
											<div class="message">
												<div class="content">
													<div class="title">New Order</div>
													<div class="description">$400 total</div>
												</div>
											</div>
									</a></li>
									<li><a href="#"> <span
											class="badge badge-danger pull-right">14</span> Inbox
									</a></li>
									<li><a href="#"> <span
											class="badge badge-danger pull-right">5</span> Issues Report
									</a></li>
									<li class="dropdown-footer"><a href="#">View All <i
											class="fa fa-angle-right" aria-hidden="true"></i></a></li>
								</ul>
							</div></li>
						<li class="dropdown profile"><a
							href="/html/pages/profile.html" class="dropdown-toggle"
							data-toggle="dropdown"> <img class="profile-img"
								src="../../../resources/css/resume/bootstrap/css/images/profile_img.png">
								<div class="title">Profile</div>
						</a>
							<div class="dropdown-menu">
								<div class="profile-info">
									<h4 class="username">${mi.member_name}님</h4>
								</div>
								<ul class="action">
									<li><a href="#"> Profile </a></li>
									<li><a href="#"> <span
											class="badge badge-danger pull-right">5</span> My Inbox
									</a></li>
									<li><a href="#"> Setting </a></li>
									<li><a href="#"> Logout </a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</div>
			</nav>

			<script type="text/javascript" src="../js/js/vendor.js"></script>
			<script type="text/javascript" src="../js/js/app.js"></script>
</body>
</html>