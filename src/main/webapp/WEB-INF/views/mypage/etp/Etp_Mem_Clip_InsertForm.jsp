<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script type="text/javascript">
	$(function(){
		$hiddenDiv = $("#hiddenDiv");
		
		$("#mem_clip").submit(function(event){
			event.preventDefault();
			
			 $.ajax({
                 type:'post',
                 url:'Etp_Mem_Clip_InsertForm',
                 /* headers: { 
                       "Content-Type": "application/json",
                       "X-HTTP-Method-Override": "POST" }, */
                 dataType:'text',
                 data: {
                	 etp_no: $hiddenDiv.find("#etp_no").text(),
                	 resume_no: $hiddenDiv.find("#resume_no").text(),
                	 mem_clip_title: 'test'
                	 /* 
                	  member_no: $hiddenDiv.find("#member_no").text(),
                	 mem_clip_title: $hiddenDiv.find("#mem_clip_title").text(),
                	 eval_memo: $hiddenDiv.find("#eval_memo").text()
                	 work_month: $hiddenDiv.find("#work_month").text(),
                	 hope_income: $hiddenDiv.find("#hope_income").text(),
                	 ed_division: $hiddenDiv.find("#ed_division").text(),
                	 volun_field: $hiddenDiv.find("#volun_field").text(), */ 
                	 
                 }, 
                 success:function(result){
                    if(result == 'SUCCESS'){
                       alert("등록 되었습니다.");
                    }
                 }
              });
		});
	});
	
	
</script>
</head>
<body>
	<div id="hiddenDiv">
		<span id="etp_no">3</span>
		<span id="resume_no">12</span>
		<!-- 
		<span id="member_no">12</span>
		<span id="eval_memo">2</span> 
		<span id="work_month">3</span>
		<span id="hope_income">3</span>
		<span id="ed_division">3</span>
		<span id="volun_field">3</span> -->
	</div>
	<form id="mem_clip" action="Etp_Mem_Clip_InsertForm" method="post">
		<input type="submit" value="인재스크랩ㄱㄱ">
	</form>
</body>
</html>