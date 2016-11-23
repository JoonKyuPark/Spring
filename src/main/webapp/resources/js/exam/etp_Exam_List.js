function changeColor() {
	$('.etp_Exam_Table_tr').hover(function() {
		$(this).css('background', '#E5E5E5');
		$(this).css('cursor', 'pointer');
	});
	$('.etp_Exam_Table_tr').mouseout(function() {
		$(this).css('background', 'none');
	});
}

$(document).ready(function() {
	$("#checkall").click(function() {
		if ($("#checkall").prop("checked")) {
			$("input[class=chk]").prop("checked", true);
		} else {
			$("input[class=chk]").prop("checked", false);
		}
	});

});

window.onload = function() {
	$('.question_list').click(function(){
		location.href="etp_Question_List?exam_no="+$(this).attr('title');
	});
	
	$('.btn-info').hover(function(){
		$(this).css('background', '#6695BE');
	});
	$('.btn-info').mouseout(function(){
		$(this).css('background', '#3679B5');
	});
	$('#exam_update_btn').click(
			function() {
				if ($(".chk:checked").length > 1) {
					alert("한개의 항목만 선택해주세요.")
				} else if ($(".chk:checked").length == 0) {
					alert("수정할 항목을 선택해주세요.")
				} else {
					$("#etp_Exam_ListForm").attr(
							'action',
							'etp_Exam_Update?exam_no='
							+ $('.chk:checked').val()).submit();
				}
			});
	
	$('.btn-info').hover(function(){
		$(this).css('background', '#6695BE');
	});
	$('.btn-info').mouseout(function(){
		$(this).css('background', '#3679B5');
	});
	
	$('#exam_delete_btn').click(
			function(){
				var param = "";
				$('.chk:checked').each(function(index, entry){
					if(param == ""){
						param += "exam_no="+ $(entry).val(); 
					}else{
						param += "&exam_no="+ $(entry).val(); 
					}
					
				});
				$.ajax({
						url : "etp_Exam_Delete",
						type : "GET",
						data : param,
						success(data){
							alert('삭제가 완료되었습니다.');
							location.href='etp_Exam_List';
						}
				});
			});
}