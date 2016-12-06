

$(document).ready(function() {
	$("#checkall").click(function() {
		if ($("#checkall").prop("checked")) {
			$("input[class=chk]").prop("checked", true);
		} else {
			$("input[class=chk]").prop("checked", false);
		}
	});

});
$(function(){
	$('.etp_Exam_Table_tr').hover(
		function(){
			$(this).children().css('background', '#ffecdf');
		},function(){
			$(this).children().css('background', '#FFF3EB');
	});
});


function clickList(){
	$('.question_list').click(function(){
		location.href="etp_Question_List?exam_no="+$(this).attr('title');
	});
}
function btnAction(){
	$('#exam_update_btn').click(
			function() {
				if ($(".chk:checked").length > 1) {
					swal({
						title : " ",
						text : '한개의 항목만 선택해주세요.',
						type:'warning',
						confirmButtonText:'확인',
						closeOnConfirm : false
					});
				} else if ($(".chk:checked").length == 0) {
					swal({
						title : " ",
						text : '수정할 항목을 선택해주세요.',
						type:'warning',
						confirmButtonText:'확인',
						closeOnConfirm : false
					});
				} else {
					$("#etp_Exam_ListForm").attr(
							'action',
							'etp_Exam_Update?exam_no='
							+ $('.chk:checked').val()).submit();
				}
			});
	$('#exam_delete_btn').click(
			function(){
				var param = "";
				if($('.chk:checked').length == 0){
					swal({
						title : " ",
						text : '삭제할 항목을 선택해주세요.',
						type:'warning',
						confirmButtonText:'확인',
						closeOnConfirm : false
					});
					return;
				}
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

							swal({
								title : " ",
								text : '삭제가 완료되었습니다.',
								type:'success',
								confirmButtonText:'확인',
								closeOnConfirm : false
							}, function(){
								location.href='etp_Exam_List';
							});
						}
				});
			});
}
function reset(){
	document.form.reset();
}
$(function(){
	clickList();
	btnAction();
});
