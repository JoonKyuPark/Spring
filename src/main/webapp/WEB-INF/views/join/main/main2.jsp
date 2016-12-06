<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<script src="../../../../resources/css/main/jquery-3.1.1.js"></script>
<!-- <script src="../../../../resources/css/main/startbootstrap-agency-gh-pages/js/agency.min.js"></script> -->
<!-- <script src= "../../../../resources/css/main/startbootstrap-agency-gh-pages/js/contact_me.js"></script> -->
<script
	href="../../../../resources/css/main/startbootstrap-agency-gh-pages/js/jqBootstrapValidation.js"></script>
<!-- Theme CSS -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link
	href="../../../../resources/css/main/startbootstrap-agency-gh-pages/css/agency.css"
	rel="stylesheet">
<link
	href="../../../../resources/css/main/startbootstrap-agency-gh-pages/css/agency.min.css"
	rel="stylesheet">


<link href="../../../../resources/css/main/mbr_style.css"
	rel="stylesheet">
<link href="../../../../resources/css/main/mbr_tpl.css" rel="stylesheet">
<link href="../../../../resources/css/main/mbr_common.css"
	rel="stylesheet">

<!-- Bootstrap Core CSS -->
<link href="../../../../resources/css/main/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom Fonts -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>


<script type="text/javascript">
	
</script>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Agency - Start Bootstrap Theme</title>



<!-- Custom Fonts -->

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-custom navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> Menu <i
					class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand page-scroll" href="#page-top">Start
				Bootstrap</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden"><a href="#page-top"></a></li>
				<li><a class="page-scroll" href="#services">Services</a></li>
				<li><a class="page-scroll" href="#portfolio">Portfolio</a></li>
				<li><a class="page-scroll" href="#about">About</a></li>
				<li><a class="page-scroll" href="#team">Team</a></li>
				<li><a class="page-scroll" href="#contact">Contact</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

	<!-- Header -->
	<header>
	<div class="container">
		<div class="intro-text">
			<div class="intro-lead-in">It's Nice To Meet You</div>
			<div class="intro-heading">Welcome To JOB-IS!</div>
			<!-- <a href="/login" class="page-scroll btn btn-xl">LOGIN</a> -->
			<a href="" data-target="#myModal" type="button" data-toggle="modal"
				class="page-scroll btn btn-xl" id="myBtn">Log in</a>

			<div>${sessionScope.etp_infor.etp_id }님어서오세요
				${sessionScope.member_infor.member_id }님 어서오세요</div>



		</div>
	</div>
	</header>

	<!-- Modal -->
	<div class="modal fade" id="myModal" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-40size " role="document">
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
					<!-- header title -->
					<h4 class="modal-title">로그인</h4>
				</div>
				<!-- body -->
				<div class="col-md-3"></div>
				<div class="modal-body col-md-8"
					style="width: 310px; height: 200px; vertical-align: middle;">
					<div class="col-md-12">
						<ul class="row nav-pills">
							<li class="active"><a href="#person" data-toggle="tab"
								style="font-size: 20px">개인회원</a></li>
							<li><a href="#coper" data-toggle="tab"
								style="font-size: 20px">기업회원</a></li>
						</ul>

						<div class="tab-content">
							<div class="tab-pane active" id="person">
								<form action="/mem_login" method="post" id="mem_login">
									<div class="row">
										<input type="text" name="member_id" placeholder="아이디"
											class="form-control" required="required"
											style="width: 200px; height: 30px; float: left"> <input
											type="submit" value="로그인" class="col-md-3 btn btn-info"
											style="font-size: 17px; float: right; height: 60px; padding: 0">

										<input type="password" class="form-control" name="member_pwd"
											placeholder="비밀번호" required="required"
											style="width: 200px; height: 30px; float: left;">

									</div>
									<div class="row">
										<a class="col-md-4" type="button" href="/join"
											style="font-size: 17px; padding: 0">회원가입</a>&nbsp;&nbsp;&nbsp; <input
											type="checkbox" value="auto" name="autologin"
											class="auto col-md-1" style="border-radius: 5px;"> <a
											class="col-md-6" style="font-size: 17px; padding: 0">자동로그인</A>

									</div>



								</form>
							</div>

							<div class="row tab-pane" id="coper">
								<form action="/etp_login" method="post">
									<input type="text" name="etp_id" placeholder="기업아이디"
										required="required"
										style="width: 200px; height: 30px; float: left"
										class="form-control"> <input type="submit" value="로그인"
										class="col-md-3 btn btn-info"
										style="font-size: 17px; float: right; height: 60px; padding: 0">

									<input type="password" name="etp_pass" placeholder="비밀번호"
										class="form-control"
										style="width: 200px; height: 30px; float: left;">

									<div class="row">
										<a class="col-md-4" type="button" href="/join"
											style="font-size: 17px; padding: 0">회원가입</a>
											 <input
											type="checkbox" value="auto" name="autologin"
											class="auto  col-md-1"
											style="border-radius: 5px;"><a
											class="col-md-6" style="font-size: 17px; padding: 0">자동로그인</a>


									</div>
								</form>
							</div>
						</div>

					</div>
				</div>
				<div class="col-md-1"></div>
				<!-- Footer -->
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>


	<!-- 
</head>
<body>
<div>
<a href="/login">sadsad</a>
</div>
</body>
</html> -->