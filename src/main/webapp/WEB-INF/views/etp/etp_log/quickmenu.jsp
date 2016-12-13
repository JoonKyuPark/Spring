<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script src="../../../../resources/js/recruit/jQuery.js"></script>
<script src="../../../../resources/bootstrap/js/bootstrap.js"></script>
<script src="../../../../resources/bootstrap/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<link href="../../../../resources/bootstrap/css/bootstrap.css" rel="stylesheet">

<link href="../../../../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
	#replies{
		padding : 0;
		margin : 0;
	}
</style>
<script type="text/javascript">


$(function(){
	$('#go').hide();
	$('#quick_sub').hide();
	
	btnClick();
	btn_button();
	
	$('#submitBtn').on('click', function(){
		$('.asd:checked').each(function(){
			var aa = $(this).attr('name');
			alert(aa);
		});
	});
});


function btnClick(){
	$('#btn').on('click', function(){
		$('#go').toggle();
	});
}


function btn_button(){
	$('#btn2').on('click',function(){
		
		$('#quick_sub').toggle();
		
			getAllList();
		
		
	
	});
	
	

}


function getAllList(){

	$.getJSON("/etp/etp_log/quick_down",function(data){
		var str="";
			
	
		
		console.log(data);
		
		$.each(data, function(idx, item){
			
	
			
			str+="<li data-member_logno='"+item.mem_logno+"' class='replyLi'>"
			+item.member_name + item.log_date+"</li>"
			
		});
	
		$("#replies").html(str);
		
	
		
		
	}); 
}

</script>


</head>
<body>

<div class="col-md-12">
	<a href='member_detail?bno=2'>인재정보</a>
</div>




<div class="col-md-12" id ="quick">
	<button id = "btn">설정</button>
</div>


<div class= "col-md-12" style="border:solid 3px" id="go">

<h1>뜰꺼!</h1>

<label>라벨1</label><input type="checkbox" name="a" class="asd">
<label>라벨2</label><input type="checkbox" name="b" class="asd">
<label>라벨3</label><input type="checkbox" name="c" class="asd">
<label>라벨4</label><input type="checkbox" name="d" class="asd">
<label>라벨5</label><input type="checkbox" name="e" class="asd">

<input type="button" id="submitBtn">

</div>
<h1 id="btn2">화살표</h1>
<div class="col-md-2" id ="quick_sub">
	<div class="col-md-10" style="border:solid 3px;">
	<ul id="replies">
	
				
	</ul>
</div>
<div class="col-md-2"></div>
</div>
<div class="col-md-8"></div>
<div class="col-md-2"></div>

</body>
</html>