<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Bootstrap 3 Admin</title>
<meta name="generator" content="Bootply" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
<link href="../../../../resources/css/exam/nav_styles.css" rel="stylesheet">
<link rel="stylesheet" href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css">
</head>
<body>
	<!-- header -->
	<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
		<div class="container-fluid col-md-2 col-sm-2 col-xs-2">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Dashboard</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a class="dropdown-toggle" role="button"
						data-toggle="dropdown" href="#"><i
							class="glyphicon glyphicon-user"></i> Admin <span class="caret"></span></a>
						<ul id="g-account-menu" class="dropdown-menu" role="menu">
							<li><a href="#">My Profile</a></li>
						</ul></li>
					<li><a href="#"><i class="glyphicon glyphicon-lock"></i>
							Logout</a></li>
				</ul>
			</div>
		</div>
		<!-- /container -->
	</div>
	<!-- /Header -->

	<!-- Main -->
	<div class="container-fluid col-md-2 col-sm-2 col-xs-2">
	<div class="row col-md-12"></div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<!-- Left column -->
				<a id = "main" href="etp_Exam_Main"><strong><i
						class="xi-calendar-check xi-2x"></i><font size="5" color="black"> J O B I X A M </font></strong></a>

				<hr>

				<ul class="nav nav-stacked">
					<li class="nav-header"><a href="#" data-toggle="collapse"
						data-target="#userMenu"><font size = "4"> S c h e d u l e s &nbsp; &nbsp; </font><i
							class="xi-angle-down"></i></a>
						<ul class="nav nav-stacked collapse in" id="userMenu">
							<li class="active"><a href="etp_Exam_Create"><font size = "3"><i
									class="xi-align-justify"></i> Schedule Registation<br> &nbsp; &nbsp; &nbsp; 일 정 등 록 </font></a></li>
							<li><a href="etp_Exam_List"><font size = "3"><i class="xi-align-justify"></i>
									Schedules Management<br> &nbsp; &nbsp; &nbsp;  일 정 관 리 </font></a></li>
						</ul></li>
					<li class="nav-header"><a href="#" data-toggle="collapse"
						data-target="#menu2"><font size = "4"> Q u e s t i o n s &nbsp; &nbsp; </font><i
							class="xi-angle-down"></i></a>

						<ul class="nav nav-stacked collapse" id="menu2">
							<li><a href="etp_Question_Create"><font size="3"><i class="xi-align-justify"></i> Question Registration<br> &nbsp; &nbsp; &nbsp; 문 제 등 록 </font></a></li>
						</ul></li>
				</ul>
				<hr>
			</div>
			<!-- /col-3 -->
		</div>

</body>
</html>