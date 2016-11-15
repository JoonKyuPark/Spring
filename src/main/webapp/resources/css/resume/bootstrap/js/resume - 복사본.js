var $career_clone;
var start_date;
var end_date;
var selected_picker;
var pickerIndex = 0;
var inputIndex = 0;
$(function() {
	$('.btn-toggle').on('click', toggleClick); // 공개 버튼 클릭시 버튼 디자인 이벤트
	$('input:radio[name="resume_no"]').on('click', defaultResumeRadioBtn); // radio 버튼 클릭시 다른 버튼 attr 삭제
	$('#default_resume_btn').on('click', defaultResumeSubmit); // 기본이력서설정 버튼
	// 클릭시
	$('.resume_open_btn').on('click', ResumeOpenbtn); // 공개버튼 클릭시 ajax 이벤트
	inputRadioEachCheck(); // 페이지 로딩후 db에 있는 해당 기본 이력서 radio checked
	submitBtnAddCareerAttr(); // submit 버튼 클릭시 기존 추가된 경력사항에 name 부여 후 submit

	// 시작 날짜와 끝나는 날짜를 지정한다. 여기에서는 30일로 설정하엿다

	start_date = moment().subtract(29, 'days');
	end_date = moment();

	datePicker_1();

	datePickerApplyBtn();
	
	$('.datePickerApply').on('click', function(){
		window.pickerIndex  = $(this).attr("index");
		alert("$('.datePickerApply')." + window.pickerIndex );
		
		

	});
	
	
$('.reportrange').on('click', cb);
});
function datePicker_1() {
	$('.reportrange').daterangepicker(
			{
				ranges : {
					'오늘' : [ moment(), moment() ],
					'어제' : [ moment().subtract(1, 'days'),
							moment().subtract(1, 'days') ],
					'지난 7일' : [ moment().subtract(6, 'days'), moment() ],
					'지난 30일' : [ moment().subtract(29, 'days'), moment() ],
					'이번 달' : [ moment().startOf('month'),
							moment().endOf('month') ],
					'지난 달' : [ moment().subtract(1, 'month').startOf('month'),
							moment().subtract(1, 'month').endOf('month') ]
				},
				'startDate' : start_date,
				'endDate' : end_date
			} );
	
	
}

function inputRadioEachCheck() {
	$('input[name="resume_no"]').each(function() {

		var val = $(this).val();
		var val2 = $('#default_resume_no').val();
		if (val === val2) {
			$(this).attr("checked", "checked");
			$(this).attr("default", "Y");
		}
	});
}

function submitBtnAddCareerAttr() {
	$("#submitBtn").on('click', function() {
		renameForCareerForm();
		$("#form").submit();

	});
}

function ResumeOpenbtn() {
	var default_resume_no = $(this).closest('tr').find('td>input.resume_no')
			.val();
	var resume_openValue = $(this).html();
	var result = "";
	$.ajax({
		url : "resume_open",
		data : "resume_openValue=" + resume_openValue + "&resume_no="
				+ default_resume_no,
		type : "GET",
		beforeSend : function() {
			$('html').css("cursor", "wait");
			$('.resume_open_btn').attr('disabled', true);
		},
		complete : function() {
			$('html').css("cursor", "auto");
			$('.resume_open_btn').attr('disabled', false);
		},
		success : function() {
			if (resume_openValue == "Y")
				result = "공개";
			if (resume_openValue == "N")
				result = "비공개";
			$('#resume_open_id').html('현재 설정 : ' + resume_openValue);
			alert("기본이력서 " + default_resume_no + "번의 공개설정이 " + result
					+ "가 되었습니다. ");
		}
	});
}

function cb(start, end) {
	var pickerNum;
	if ($(".reportrange").index($(this)) != -1){
		alert("window.selected_picker::" + $(".reportrange").index($(this)));
		pickerNum = $(".reportrange").index($(this));
		$('.page-header').html(start.format('YYYY/MM/DD') + ' ~ ' + end.format('YYYY/MM/DD'));
		$(".resume_career_join_date_input[index="+window.selected_picker+"]").html(start.format('YYYY/MM/DD') + ' ~ ' + end.format('YYYY/MM/DD'));
		//work_year_up();
	}
	
	$('.page-header').html(start.format('YYYY/MM/DD') + ' ~ ' + end.format('YYYY/MM/DD'));
	
	

}
function checkPickerIndex(id){
	alert(id);
	window.selected_picker = id;
}

function defaultResumeRadioBtn() { // radio 버튼 클릭시 다른 radio버튼 attr 삭제
	$('input:radio[name="resume_no"]').attr("checked", "N");
	$(this).attr("default", "Y");
}

function defaultResumeSubmit() {
	var default_resume_no = $('input:radio[name="resume_no"][default="Y"]')
			.val();
	$.ajax({
		url : 'resume_default_update',
		type : 'GET',
		data : "default=" + default_resume_no,
		success : function() {
			alert(default_resume_no + "번이 기본 이력서로 설정되었습니다.");
		}
	});
}

function toggleClick() { // 공개 버튼 클릭시 버튼 디자인 이벤트
	$(this).find('.btn').toggleClass('active');

	if ($(this).find('.btn-primary').size() > 0) {
		$(this).find('.btn').toggleClass('btn-primary');
	}
	if ($(this).find('.btn-danger').size() > 0) {
		$(this).find('.btn').toggleClass('btn-danger');
	}
	if ($(this).find('.btn-success').size() > 0) {
		$(this).find('.btn').toggleClass('btn-success');
	}
	if ($(this).find('.btn-info').size() > 0) {
		$(this).find('.btn').toggleClass('btn-info');
	}
	$(this).find('.btn').toggleClass('btn-default');
};

function renameForCareerForm() {
	$(".career_form").each(
			function(index) {
				$(this).find("input[name=career_no]").attr("name",
						"resumeListDTO[" + index + "].career_no");
				$(this).find("input[name=important_ability]").attr("name",
						"resumeListDTO[" + index + "].important_ability");
				$(this).find("input[name=join_date]").attr("name",
						"resumeListDTO[" + index + "].join_date");
				$(this).find("input[name=retire_date]").attr("name",
						"resumeListDTO[" + index + "].retire_date");
				$(this).find("input[name=career_work_state]").attr("name",
						"resumeListDTO[" + index + "].career_work_state");
				$(this).find("input[name=career_etp_name]").attr("name",
						"resumeListDTO[" + index + "].career_etp_name");
				$(this).find("input[name=career_field]").attr("name",
						"resumeListDTO[" + index + "].career_field");
				$(this).find("input[name=work_dept]").attr("name",
						"resumeListDTO[" + index + "].work_dept");
				$(this).find("input[name=work_rank]").attr("name",
						"resumeListDTO[" + index + "].work_rank");
				$(this).find("input[name=work_month]").attr("name",
						"resumeListDTO[" + index + "].work_month");
				$(this).find("input[name=work_location]").attr("name",
						"resumeListDTO[" + index + "].work_location");
				$(this).find("input[name=work_income]").attr("name",
						"resumeListDTO[" + index + "].work_income");
				$(this).find("input[name=responibility_field]").attr("name",
						"resumeListDTO[" + index + "].responibility_field");
				$(this).find("input[name=retire_reasion]").attr("name",
						"resumeListDTO[" + index + "].retire_reason");

			});
};

function renameForDatePicker() {
	$(".reportrange").each(function(index) {
		$(this).attr("index", index);
		$(this).find('span').attr("index", index);
	});
}

function work_year_up(index) {
	var career_year1;
	var career_mon1;
	var career_year2;
	var career_mon2;

	var career_year = 0;
	var career_mon = 0;
	var career_result;

	career_year1 = $('.resume_career_join_date_input').html().substring(0, 4); // 2016
	career_mon1 = $('.resume_career_join_date_input').html().substring(5, 7); // 09
	// career_year1 +=
	// $('.resume_career_join_date_input').html().substring(8,11);//13

	career_year1 = parseInt(career_year1);

	career_year2 = $('.resume_career_join_date_input').html().substring(13, 17); // 2017
	career_mon2 = $('.resume_career_join_date_input').html().substring(18, 20); // 10
	// career_year2 +=
	// $('.resume_career_join_date_input').html().substring(21,24);//13

	career_year2 = parseInt(career_year2);

	$('.resume_career_join_date_hidden').val(career_year1 + "/" + career_mon1);
	$('.resume_career_retire_date_hidden')
			.val(career_year2 + "/" + career_mon2);

	career_year = career_year2 - career_year1;

	if (career_mon2 >= career_mon1)
		career_mon = career_mon2 - career_mon1;

	career_result = parseInt(career_year);

	if (career_mon >= 0) {
		career_result++;
	}

	$('.resume_carrer_work_month_h6').html(career_result + "년차");
	$('.resume_carrer_work_month').val(career_result);

	var careerYear = $('.resume_carrer_work_month').val();
	$('#resume_career_month_input').val(careerYear);
	$('.resume_career_month_h6').html(careerYear + "년");
}

$(function() {
	// 실제로 보여지는 날짜를 정의.
	$('.txt-work-month')
			.text(
					new Date().getFullYear() + '년 '
							+ (new Date().getMonth() + 1) + '월');
	// monthpicker 에서 사용할 초기 날짜 정의
	$('.monthpicker').val(
			new Date().getFullYear() + '/' + (new Date().getMonth() + 1));

	// monthpicker 적용
	$('.monthpicker').bootstrapMonthpicker({
		// from: '2014-05',
		// to: '2014-10',
		// 달을 선택한 다음의 이벤트 정의
		onSelect : function(value) {
			var workMonthStr = '';
			/*******************************************************************
			 * monthpicker 라이브러리에서 기본으로 "-" 를 사용
			 ******************************************************************/
			var splitDate = $.trim(value).split("/");

			// 표한하고 싶으신 포맷으로 알아서 정의하시면 됩니다.
			$.each(splitDate, function(_idx, _date) {
				if (_idx == 0)
					workMonthStr += _date + '년 ';
				if (_idx == 1)
					workMonthStr += _date + '월';
			});

			// 표시
			$('.txt-work-month').text(workMonthStr);
		}
	});
	// #choice-work-month 에 monthpicker 이벤트 정의
	$('.choice-work-month').on('click', function() {
		$('.monthpicker').on(click());
	});
});

$(function() {
	if ($('#career_radio_btn_new').is(':checked'))
		$('#career_wrapper').css("display", "none");
	$('#career_radio>input').on('change', career_radio_fn);
	$career_clone = $('#career').clone().html();

})

function career_radio_fn() { /* 신입경력 버튼클릭시 디스플레이 토글 */
	if ($('#career_radio_btn_new').is(':checked'))
		$('#career_wrapper').css("display", "none");
	else if ($('#career_radio_btn_old').is(':checked'))
		$('#career_wrapper').css("display", "block");
}

function datePickerApplyBtn(){
	$('.datePickerApply').each(function(index){
		$('.datePickerApply').attr('index',index);
	});
	
}

function career_add_btn_fn() {
	$('.career_form').last().after($career_clone);
	window.inputIndex += 1;
	$('.resume_career_join_date_input').last().attr("index", window.inputIndex);
	$('.resume_carrer_work_month[name="work_month"]').last().attr("index", window.inputIndex);
	$('.resume_carrer_work_month_h6').last().attr("index", window.inputIndex);
	renameForDatePicker();
	datePicker_1();
	datePickerApplyBtn();
	
	
	// $(document).find(".reportrange").last;
}
