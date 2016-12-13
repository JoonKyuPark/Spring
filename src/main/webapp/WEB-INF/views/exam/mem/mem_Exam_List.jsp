<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Script -->
<script src="../../../../resources/js/exam/jquery-3.1.1.js"></script>
<script src="../../../../resources/js/exam/bootstrap.min.js"></script>
<script src="../../../../resources/js/exam/bootstrap-select.js"></script>
<script src="../../../../resources/js/exam/bootstrap-switch.js"></script>
<script src="../../../../resources/js/exam/mem_Exam_List.js"></script>
<script src="../../../../resources/js/recruit/mem/sweetalert.min.js"></script>
<!-- CSS -->
<link href="../../../../resources/css/exam/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../../../resources/css/exam/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css" rel="stylesheet" />
<link href="../../../../resources/css/exam/bootstrap-select.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="../../../../resources/css/recruit/mem/sweetalert.css">
<link href="../../../../resources/css/exam/mem_Exam_List.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="../../../../resources/css/recruit/mem/sweetalert.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>J O B I X A M J O I N</title>
</head>
<body>
	<%@include file="../nav2.jsp"%>
	<div class="col-md-10 col-sm-10 col-xs-10  outerDiv">

		<div class="col-md-10 examListForm">
			<h1>J O B I X A M &nbsp; J O I N</h1>
			<hr>
			<div class="col-md-12">
				<form id="mem_Exam_ListForm" action="mem_Question_List"
					method="POST" class="col-md-12">
					<input type="hidden" name="exam_question_no" value=1> <select
						id="mem_Selected_Exam" class="selectpicker" name="exam_no">
						<option selected="selected">시험 선택</option>
						<c:forEach var="i" items="${mem_Exam_List }">
							<option value="${i.exam_no }">${i.exam_name }</option>
						</c:forEach>
					</select> <label><font size="3">&nbsp; 을 선택하셨습니다.</font></label>
				</form>
			</div>
			<div class="col-md-12 textDiv">
				<div class="col-md-12">
					<textarea class="col-md-12 form-control" rows="13"
						readonly="readonly">
					제 1 조 (목적)
이 규정은 (주)멀티캠퍼스(이하 "멀티캠퍼스")에서 시행하는 ACTFL TEST와 관련하여
부정행위를 방지 할 수 있도록 예방하며, 공정한 평가가 이루어지도록 하는데 그 목적이 있다.
제 2 조 (효력)
이 규정은 멀티캠퍼스에서 시행하는 어학 평가시험 시 부정행위로 인한 다툼이나 분쟁이 발생하였을 경우 멀티캠퍼스의 공식적인 결정 근거로 삼는다.
제 3 조 (부정행위의 정의)
부정행위란 멀티캠퍼스에서 시행하는 ACTFL TEST와 관련하여 응시자 자신의 실력 이외에 타인의 도움 또는 기타 부정한 방법을 이용하여 공정한
시험 평가에 저촉되는 행위를 하는 것을 말한다.
제 4 조 (감독자 권한)
시험감독자는 공정한 시험 운영에 필요한 모든 권한을 갖는다.
1. 공정한 시험의 진행 및 질서 유지
2. 부정행위자 적발, 퇴실 조치
제 5 조 (부정행위의 적발)
ACTFL TEST와 관련한 부정행위 적발은 멀티캠퍼스의 고유권한으로 상당한 사유 없이는 번복하지 않는다. 부정행위의 적발 유형은 다음과 같다.
1. 현장적발 : 시험 감독자 및 시험 진행 관련자에 의한 적발이며 현장적발된 응시자는 진행 시험 무효 처리와 함께 즉각 퇴실 조치된다.
2. 대리응시 : 사전에 공모하여 신분증 위, 변조 등의 방법으로 시험에 대리응시 하거나 기타의 부정한 행위를 말하며 이 때,
쌍방은 모두 부정행위자로 처리된다.
* 대리응시 적발 : 응시자의 음성답변 비교 (Voice Matching) 및 현장촬영사진 대조
3. 기타 : 위 1,2 항 외에 발생된 기타 유형의 부정행위.
제 6 조 (부정행위 처리대상 및 응시자격 제한 기간)
다음은 각 1호의 행위를 부정행위로 정의하며 각각의 응시 자격제한 기간은 다음과 같다.
1. 부정행위로 민,형사상 처벌을 받은 경우 : 5년간 자격제한
2. 신분증을 위,변조하여 시험을 치르는 행위 : 4년간 자격제한
3. 인증서를 위,변조하여 사용하는 행위 : 4년간 자격제한
4. 대리 시험을 치르거나 치르도록 하는 행위 : 4년간 자격제한
5. 문제 및 답변을 메모하거나 녹음하는 행위 : 4년간 자격제한
6. 문제의 일부 또는 전부를 유출하거나, 인쇄 또는 배포하는 행위 : 4년간 자격제한
7. 시험 중 시험에 영향을 줄 수 있는 참고자료를 보는 행위 : 2년간 자격제한
8. 감독자의 정당한 지시에 불응하는 행위 : 1년간 자격제한
9. 기타 시험 진행에 방해되는 행위 : 1년간 자격제한
10. 사후적발에 의해 부정행위로 판명된 경우 : 현장적발과 동일하게 처리
제 7 조 (저작권 침해 유형 및 응시자격 제한 기간)
저작권자의 허락 없이 무단으로 저작물을 이용하는 다음 각 1호의 행위를 저작권 침해행위로 정의하며 각각의 응시 자격제한 기간은
다음과 같다.
1. 문제 또는 단어 등을 메모하거나 녹음하는 행위 : 4년간 자격 제한
2. 문제의 일부 또는 전부를 유출하는 행위 : 4년간 자격 제한
3. 유출된 문제의 일부 또는 전부를 인터넷이나 인쇄물 등으로 유포, 강의하는 행위 : 발견일로부터 4년간 자격 제한
제 8 조 (부정행위자 및 저작권 침해자에 대한 사후 조치사항)
멀티캠퍼스는 본 규정 제 6 조 및 제 7 조 각 항과 관련하여 부정행위자 및 저작권 침해자가 발생되었을 경우 반드시 본인 또는 관련자에게 직접
(통화, 불가피한 경우 우편) 아래의 사항을 통보하고 부정행위 처리한다.
1. 부정행위자 사후 조치사항
가. 해당자의 성적 무효 처리
나. 부정행위일로부터 1~5년간 해당 시험에 대한 응시자격 제한
다. 응시자 소속 단체장에 부정행위 공문발송. (단, 기업체, 기관 단체시험에 한함)
2. 저작권 침해자 사후 조치사항
가. 해당자의 성적 무효 처리
나. 발견일로부터 4년간 해당 시험에 대한 응시자격 제한
다. 민, 형사상 조치
제 9 조 (재시험대상 및 요청)
멀티캠퍼스는 기존 성적에 비해 당해 시험 성적이 비정상적으로 상승된 응시자 중 부정행위의 개연성은 있으나 그 사실을 명확히 알 수 없어 재시험을 통한 확인이 반드시 필요한 응시자에 대해서는 재시험을 요청할 수 있으며, 위 응시자는 위 사실을 통보 받은 날로부터 2주 이내에 재시험을 통해 부정행위 여부를 재확인하게 된다.
제 10 조 (재시험 거부자에 대한 조치)
제 9조와 관련한 멀티캠퍼스의 재시험 요청에 정당한 사유 없이 불응하는 자는 부정행위자로 처리될 수 있다.
재시험 결과는 부정행위 여부를 가리는 도구로만 사용되며 점수로 인정되지 않는다.
제 11 조 (성적조회)
멀티캠퍼스는 응시자가 국내기업체, 기관단체에 제출한 어학성적의 진위여부를 해당 업체, 기관에 통보할 수 있다.
1. 성적조회는 조회일로부터 2년 이내 성적만 가능하다.
2. 인증서를 위,변조하여 사용할 경우 부정행위처리규정 제6조 3항에 의거 부정행위처리 및 통보한다.
				</textarea>
				</div>
				<br> <br>
				<div id="agreement" align="center" class="col-md-12">
					<br> <input type="radio" class="agree" value="agree"
						name="agree"> 약관에 동의합니다. <input type="radio" class="agree"
						value="disagree" name="agree" checked="checked"> 약관에 동의하지
					않습니다.
				</div>
				<div id="gotoexam" align="right" class="col-md-12">
					<label id="gotoexamlink" style="cursor: pointer"><font
						size="5"><i class="xi-send"></i><i class="xi-send"></i>
							&nbsp; </font></label>
				</div>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>

</body>
</html>