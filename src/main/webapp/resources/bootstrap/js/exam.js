$(document).ready(function() {
	$("#checkall").click(function() {
		if ($("#checkall").prop("checked")) {
			$("input[class=chk]").prop("checked", true);
		} else {
			$("input[class=chk]").prop("checked", false);
		}
	});

});
var check = function() {
	if ($(".chk:checked").length > 1) {
		alert("한개의 항목만 선택해주세요.")
	}else if($(".chk:checked").length == 0){
		alert("수정할 항목을 선택해주세요.")
	} else {
		$("#boardForm").attr("action","Etp_Exam_Update.jsp").submit();
	}
}
var deleteExam = function(){
	$("#boardForm").attr("action","Etp_Exam_DeleteOk.jsp").submit();
}