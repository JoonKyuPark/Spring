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

<link href="../../../../resources\css\main\css\grayscale.min.css" rel="stylesheet">
<link href="../../../../resources\css\main\css\grayscale.css" rel="stylesheet">
</head>
<body style = "background : white !important;">
	<!-- header -->
	<div id="top-nav" class="navbar navbar-inverse navbar-static-top" style = "background : white !important;margin : 0; margin-bottom : 1%; padding : 0px;">
	 <nav class="navbar navbar-custom navbar-fixed-top" role="navigation" style ="margin : 0; padding : 0;">
   <div class="navbar-white col-md-12" style="z-index: 5000;">
      <div class="navbar-header">
         <button type="button" class="navbar-toggle" data-toggle="collapse"
            data-target=".navbar-main-collapse">
            Menu <i class="fa fa-bars"></i>
         </button>
         <a class="navbar-brand page-scroll" href="#page-top"> JOB <span
            class="light">IS</span>
         </a>
      </div>
      <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
         <ul class="nav navbar-nav">
            <li><a class="page-scroll" href="#about">
            <li class="hidden"><a href="#page-top"></a></li>
            <li><a class="page-scroll" href="#about">전체 채용공고</a></li>
            <li><a class="page-scroll" href="#download">시험</a></li>
            <li><a class="page-scroll" href="#download">스마트매칭</a></li>
            <li><a class="page-scroll" href="#contact">로그인</a></li>
         </ul>
      </div>
   </div>
   </nav>
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