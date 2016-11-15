var $career_clone;

$(function() {
	// 시작 날짜와 끝나는 날짜를 지정한다. 여기에서는 30일로 설정하엿다
	var start_date = moment().subtract(29, 'days');
	var end_date = moment();
	function cb(start, end) {
		$('.reportrange span').html(start.format('YYYY/MM/DD') + ' ~ ' + end.format('YYYY/MM/DD'));
		work_year_up();
	}
	cb(start_date, end_date);

	$('.reportrange').daterangepicker({
		ranges : {
			'오늘' : [ moment(), moment() ],
			'어제' : [ moment().subtract(1, 'days'), moment().subtract(1, 'days') ],
			'지난 7일' : [ moment().subtract(6, 'days'), moment() ],
			'지난 30일' : [ moment().subtract(29, 'days'), moment() ],
			'이번 달' : [ moment().startOf('month'), moment().endOf('month') ],
			'지난 달' : [ moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month') ]
		},
		'startDate' : start_date,
		'endDate' : end_date
	}, cb);
});
function work_year_up() {
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

	$('.resume_career_join_date_hidden').val(career_year1+"/"+career_mon1);
	$('.resume_career_retire_date_hidden').val(career_year2+"/"+career_mon2);
	
	
	career_year = career_year2 - career_year1;

	if (career_mon2 >= career_mon1)
		career_mon = career_mon2 - career_mon1;

	career_result = parseInt(career_year);

	if (career_mon >= 0) {
		career_result++;
	}

	$('.resume_carrer_work_year_h6').html(career_result + "년차");
	$('.resume_carrer_work_year').val(career_result);
	
	
	var careerYear = $('.resume_carrer_work_year').val();
	$('#resume_career_year_input').val(careerYear);
	$('.resume_career_year_h6').html(careerYear+"년");
}
$(function() {
	// 실제로 보여지는 날짜를 정의.
	$('.txt-work-month').text(new Date().getFullYear() + '년 ' + (new Date().getMonth() + 1) + '월');
	// monthpicker 에서 사용할 초기 날짜 정의
	$('.monthpicker').val(new Date().getFullYear() + '/' + (new Date().getMonth() + 1));

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
	$('.choice-work-month').on('click',function() {
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

function career_add_btn_fn() {

	$('#career').after($career_clone);
	$(document).find(".reportrange").removeClass('hasDatepicker').cb();
}
