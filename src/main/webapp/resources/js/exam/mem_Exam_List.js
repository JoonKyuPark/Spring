	window.onload = function() {
		$('#gotoexamlink').click(function() {
			if ($('#mem_Selected_Exam').val() == '시험 선택') {
				alert('시험을 선택해주세요.');
				return ; 
			} else {

				if ($(':radio[class="agree"]:checked').val() == 'disagree') {
					alert('진행하려면 약관에 동의해주세요.');
					return;
				} else {
					var form = $('#mem_Exam_ListForm').serialize();
					$.ajax({
						url : 'mem_Update_Count',
						type : 'post',
						data : form,
						success : function() {
							alert('시험을 시작합니다.');
						}
					});
					alert('시험을 시작합니다.');
					$('#mem_Exam_ListForm').submit();
				}
			}
		});

	}

	history.pushState(null, null, location.href);
	window.onpopstate = function(event) {
		history.go(1);
	};