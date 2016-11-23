	$(document).ready(function() {
		calendar(0, 0, 0);

	});

	function preYear(y, m, d) {

		$('#calendar ul').remove();

		$('#calendar table').remove();

		calendar(y - 1, m, d);

	}

	function nextYear(y, m, d) {

		$('#calendar ul').remove();

		$('#calendar table').remove();

		calendar(y + 1, m, d);

	}

	function preMonth(y, m, d) {

		$('#calendar ul').remove();

		$('#calendar table').remove();

		if (d == 99) {

			d = 1;

		}

		if ((m - 1) == -1) {

			y = y - 1;

			m = 12;

		}

		calendar(y, m - 1, d);

	}

	function nextMonth(y, m, d) {

		$('#calendar ul').remove();

		$('#calendar table').remove();

		if (d == 99) {

			d = 1;

		}

		if ((m + 1) == 12) {

			y = y + 1;

			m = -1;

		}

		calendar(y, m + 1, d);

	}

	function calendar(y, m, d)

	{

		var date = new Date();

		var now = new Date();

		var day = date.getDate();

		if (y != 0) { //입력받은 년,월 정보로 date객체의 년,월 정보를 수정(day는 today 표시를 하지 않기위해 임의로 99로 지정함)

			date.setFullYear(y);

			if (m < 0) {

				m = 12;

			}

			date.setMonth(m);

			date.setDate(1);

			day = 99;

		}

		if (y != 0 && now.getMonth() == m && y == now.getFullYear()) { //현재 년월과 입력받은 년월이 같을때 date값은 오늘 날짜로 지정해서 today class설정이 되도록 한다.

			day = now.getDate();

		}

		var month = date.getMonth();

		var year = date.getYear();

		var docu;

		if (year <= 200)

		{

			year += 1900;

		}

		var months = new Array('1', '2', '3', '4', '5', '6', '7', '8', '9',
				'10', '11', '12');

		var days_in_month = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31,
				30, 31);

		if (year % 4 == 0 && year != 1900) //윤년

		{

			days_in_month[1] = 29;

		}

		total = days_in_month[month];

		var date_today = year + '.' + months[month];

		var beg_j = date;

		beg_j.setDate(1);

		if (beg_j.getDate() == 2)

		{

			beg_j = setDate(0);

		}

		beg_j = beg_j.getDay();

		docu += '<div id="cal"><div class="col-md-4"></div><div class="ul_Div col-md-4"><ul class="calMonth"><li class="mR8"><a href="#" onclick="preYear('
				+ year
				+ ','
				+ month
				+ ','
				+ day
				+ ');" title="작년 "><i class = "xi-angle-left"></i></a></li><li><a href="#" onclick="preMonth('
				+ year
				+ ','
				+ month
				+ ','
				+ day
				+ ');" title="이전달"><i class="xi-angle-left-min">&nbsp;</i></a></li><li class="yearMonth">'
				+ date_today
				+ '</li><li class="mR8"><a href="#" onclick="nextMonth('
				+ year
				+ ','
				+ month
				+ ','
				+ day
				+ ');" title="다음달">&nbsp;<i class="xi-angle-right-min"></i></a></li><li><a href="#" onclick="nextYear('
				+ year
				+ ','
				+ month
				+ ','
				+ day
				+ ');" title="내년"><i class="xi-angle-right"></i></a></li></ul></div><div class="col-md-4"></div>';

		docu += '<table class="calTable" summary="일정"><colgroup><col width="15%" /><col width="14%" /><col width="14%" /><col width="14%" /><col width="14%" /><col width="14%" /><col width="15%" /></colgroup><thead><tr class="week_Tr"><th class="weekSun"><font color="red">일</font></th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th class="weekSat"><font color="blue">토</font></th></tr></thead></div>';

		week = 0;

		for (var i = 1; i <= beg_j; i++)

		{

			docu += '<td></td>';

			week++;

		}

		for (var i = 1; i <= total; i++)

		{

			if (week == 0)

			{

				docu += '<tr class="day_Tr">';

			}

			if (day == i && day != 99)

			{
				strI = i + "";
				if (strI.length < 2) {
					strI = 0 + strI;
				}
				;
				var compareDate = year + '/' + (month + 1) + '/' + strI;
				var exam_length = document.getElementsByClassName('exam_sdate').length;
				var compareSdate = document
						.getElementsByClassName('exam_sdate');
				var compareDdate = document
						.getElementsByClassName('exam_ddate');
				docu += '<td class="today">';
				docu += '<div class="td_Div">';
				docu += i;
				for (var index = 0; index < exam_length; index++) {
					if (compareDate == compareSdate[index]
							.getAttribute('value').substring(0,10)) {
						docu += '<br>' + '<a class = "calender_Exam" href="/exam/etp/etp_Question_List?exam_no=' +compareSdate[index].getAttribute('value').substring(11)+'">'
								+ '<font color="white">' + compareSdate[index].getAttribute('name')
								+ '&nbsp;시작일'+'</font></a>';
					}
					;
					if (compareDate == compareDdate[index]
							.getAttribute('value')) {
						docu += '<br>' + '<a class = "calender_Exam" href="/exam/etp/etp_Question_List?exam_no=' +compareSdate[index].getAttribute('value').substring(11)+'">'
								+compareSdate[index].getAttribute('name')
								+ '&nbsp;종료일' + '</a>';
					}
				}
				docu += '</div>';
				docu += '</td>';
			}

			else

			{

				if (week == 0) {
					strI = i + "";
					if (strI.length < 2) {
						strI = 0 + strI;
					}
					;
					var compareDate = year + '/' + (month + 1) + '/' + strI;
					var exam_length = document.getElementsByClassName.length;
					var compareSdate = document
							.getElementsByClassName('exam_sdate');
					var compareDdate = document
							.getElementsByClassName('exam_ddate');
					docu += '<td class="weekSun">'// 일요일
					docu += '<div class="td_Div">';
					docu += '<font color = "red">';
					docu += i;
					docu += '</font>';
					for (var index = 0; index < exam_length; index++) {
						if (compareDate == compareSdate[index]
								.getAttribute('value').substring(0,10)) {
							docu += '<br>' + '<a class = "calender_Exam" href="/exam/etp/etp_Question_List?exam_no=' +compareSdate[index].getAttribute('value').substring(11)+'">'
									+ compareSdate[index].getAttribute('name')
									+ '&nbsp;시작일'+'</a>';
						}
						;
						if (compareDate == compareDdate[index]
								.getAttribute('value')) {
							docu += '<br>' + '<a class = "calender_Exam" href="/exam/etp/etp_Question_List?exam_no=' +compareSdate[index].getAttribute('value').substring(11)+'">'
									+compareSdate[index].getAttribute('name')
									+ '&nbsp;종료일' + '</a>';
						}
					}
					docu += '</div>';
					docu += '</td>';

				} else if (week == 6) {
					strI = i + "";
					if (strI.length < 2) {
						strI = 0 + strI;
					}
					;
					var compareDate = year + '/' + (month + 1) + '/' + strI;
					var exam_length = document.getElementsByClassName.length;
					var compareSdate = document
							.getElementsByClassName('exam_sdate');
					var compareDdate = document
							.getElementsByClassName('exam_ddate');
					docu += '<td class="weekSat">';
					docu += '<div class="td_Div">';
					docu += '<font color = "blue">';
					docu += i;
					docu += '</font>';
					for (var index = 0; index < exam_length; index++) {
						if (compareDate == compareSdate[index]
								.getAttribute('value').substring(0,10)) {
							docu += '<br>'+'<a class = "calender_Exam" href="/exam/etp/etp_Question_List?exam_no=' +compareSdate[index].getAttribute('value').substring(11)+'">'
									+ compareSdate[index].getAttribute('name')
									+ '&nbsp;시작일'+'</a>';
						}
						;
						if (compareDate == compareDdate[index]
								.getAttribute('value')) {
							docu += '<br>' + '<a class = "calender_Exam" href="/exam/etp/etp_Question_List?exam_no=' +compareSdate[index].getAttribute('value').substring(11)+'">'
									+ compareSdate[index].getAttribute('name')
									+ '&nbsp;종료일' + '</a>';
						}
					}
					docu += '</div>';
					docu += '</td>';
				} else {
					strI = i + "";
					if (strI.length < 2) {
						strI = 0 + strI;
					}
					;
					var compareDate = year + '/' + (month + 1) + '/' + strI;
					var exam_length = document
							.getElementsByClassName('exam_sdate').length;
					var compareSdate = document
							.getElementsByClassName('exam_sdate');
					var compareDdate = document
							.getElementsByClassName('exam_ddate');
					docu += '<td>';
					docu += '<div class="td_Div">';
					docu += i;
					console.log(exam_length);
					for (var index = 0; index < exam_length; index++) {
						if (compareDate == compareSdate[index]
								.getAttribute('value').substring(0,10)) {
							docu += '<br>' + '<a class = "calender_Exam" href="/exam/etp/etp_Question_List?exam_no=' +compareSdate[index].getAttribute('value').substring(11)+'">'
									+ compareSdate[index].getAttribute('name')
									+ '&nbsp;시작일' + '</a>';
						}
						;
						if (compareDate == compareDdate[index]
								.getAttribute('value')) {
							docu += '<br>' + '<a class = "calender_Exam" href="/exam/etp/etp_Question_List?exam_no=' +compareSdate[index].getAttribute('value').substring(11)+'">'
									+ compareSdate[index].getAttribute('name')
									+ '&nbsp;종료일' + '</a>';
						}
					}
					docu += '</div>';
					docu += '</td>';

				}

			}

			week++;

			if (week == 7)

			{

				docu += '</tr>';

				week = 0;

			}

		}

		for (var i = 1; week != 0; i++) //공백

		{

			docu += '<td></td>';

			week++;

			if (week == 7)

			{

				docu += '</tr>';

				week = 0;

			}

		}

		docu += '</tbody></table>';

		$('#calendar').html(docu);

		return true;

	}