<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="//cdn.ckeditor.com/4.6.0/full/ckeditor.js"></script>
<script type="text/javascript"> 
	/* $(function(){
		$eval_memo = $('editor1');
		
		$('eval_memo_ok').submit(function(event){
			event.preventDefault();
			
			$.ajax({
				type:'post',
				url:'Etp_Mem_Clip_ListForm',
				dataType:'text',
				data:{
					eval_meno : $eval_memo.find('editor1').text();
				},
				success : function(result){
					if(result='SUCCESS'){
						alert("등록되었습니다.");
					}
				}
			});
		});
	});	 */
</script>
</head>
<body>
	<form action="Etp_Eval_Memo" method="post">
		<input type="hidden" value="${mem_clip_no}" name="mem_clip_no"/>
		<textarea name="eval_memo" id="eval_memo" rows="10" cols="80">
			내용
		</textarea>
		<script>
			CKEDITOR.replace(
				'eval_memo'/* ,
				{
					toolbar:'Basic',
					filebrowserImageUploadUrl : 'fileupload.jsp?type=Images',
					width:'100%',
					height:'200'
				} */
			);
		</script>
		
		<input id="eval_memo_ok" type="submit" value="확인">
	</form>
</body>
</html>