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

<script type="text/javascript">

var waring = function(event){
	event.preventDefault();
	alert(${sessionScope.member_infor.member_id} +"님 로그아웃 되었습니다");
	location.href="/mem_logout"
	
}

</script>


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
			<a class="navbar-brand page-scroll" href="/">Start
				Bootstrap</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden"><a href="#page-top"></a></li>
				<li><a class="page-scroll" href="/resume/create">이력서등록</a></li>
				<li><a class="page-scroll" href="/recruit/mem_Recruit_List_Form">전체 채용공고</a></li>
				<li><a class="page-scroll" href="/exam/mem/mem_Exam_Main">채용시험</a></li>
				<li><a class="page-scroll" href="#team">Team</a></li>
				<li><a href=/etp_logout class="page-scroll" href="#contact"  id="check" onclick="waring(event)">로그아웃</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

	<!-- Header -->
	<header>
	<div class="container">
		<div class="intro-text">
			<div class="intro-lead-in">Welcome To Our Studio!</div>
			<div class="intro-heading">It's Nice To Meet You</div>
			<!-- <a href="/login" class="page-scroll btn btn-xl">LOGIN</a> -->
			<!-- <a href="" data-target="#myModal" type="button"  data-toggle="modal" class="page-scroll btn btn-xl" id="myBtn">Log in</a> -->
			<div class="btn-xl row">
				<div class="col-md-8">
					<div class="col-md-1">
						<form action="/mem_logout">
							<input type="submit" value="로그아웃">
						</form>
						<span type="" readonly="readonly">${sessionScope.member_infor.member_id }님
							반갑습니다.! </span>

					</div>
				</div>

			</div>
		</div>
	</header>

	<!-- Modal -->
	<button class="btn btn-default" data-target="#layerpop"
		data-toggle="modal" id="popbutton">모달출력버튼</button>
	<br />
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
					<!-- header title -->
					<h4 class="modal-title">로그인</h4>
				</div>
				<!-- body -->
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



			</div>
			<!-- Footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
	</div>







</body>
</html>