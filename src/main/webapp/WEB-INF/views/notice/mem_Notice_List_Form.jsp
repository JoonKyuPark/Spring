<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko-kr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>부트스트랩</title>
<link rel="stylesheet" type="text/css" media="all"
	href="../../../resources/css/recruit/mem/daterangepicker.css" />
<link rel="import" href="../polymer/polymer.html">
<link rel="import" href="../iron-icon/iron-icon.html">
<link rel="stylesheet"
	href="../../../resources/css/recruit/mem/sweetalert.css">
<link href="../../../resources/css/recruit/mem/bootstrap.min.css"
	rel="stylesheet">
<link href="../../../resources/css/recruit/mem/kfonts2.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/notice/mem/mem_Notice_List_Style.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript"
	src="../../../resources/js/recruit/mem/jquery-2.1.3.min.js"></script>
<script src="../../../resources/js/recruit/mem/sweetalert.min.js"></script>
<script src="../../../resources/js/recruit/mem/bootstrap.min.js"></script>

<script type="text/javascript">
	
</script>
</head>
<body>
	<%@include file="../receive/mem_Join_Receive_nav.jsp"%>

	<div class="row">
		<div class="col-sm-12 col-xs-12">
			<div class="card">
				<div class="card-body">
					<h1>알림센터</h1>

					<c:if test="${mem_notice_list.size()==0}">
						<div class="nav" id="resume_form_div">
							<h5 id="recruit_title">
								<center>알림 없습니다.</center>
							</h5>
						</div>
					</c:if>
					<c:if test="${mem_notice_list.size()>0}">
						<c:forEach var="i" begin="0" end="${mem_notice_list.size()-1}"
							step="1">
							<div class="row" id="resume_form_div">
								<div class="col-sm-1 col-xs-1">
								</div>
								<div class="col-sm-11 col-xs-11">
									<div class="nav" id="basic_resume_form">
										<div id="resume_title">
											<h4 id="resume_title_name">&nbsp&nbsp${mem_notice_list[i].notice_type}</h4>
											<h6 id="resume_title_name">&nbsp&nbsp&nbsp&nbsp
												${mem_notice_list[i].notice_date}</h6>
										</div>
										<h5 id="resume_title_h5">&nbsp&nbsp&nbsp${mem_notice_list[i].notice_name}</h5>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</div>
			</div>
		</div>
	</div>

</body>
</html>