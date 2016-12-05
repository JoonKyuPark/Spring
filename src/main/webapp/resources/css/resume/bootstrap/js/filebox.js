$(function() {
	$(".fileDrop").on("dragenter dragover", function(event) {
		event.preventDefault();
	});
	fileBoxList(); // 파일목록 불러오기

	var timeoutId = 0;

	var isClick = 0;

	var timer;
	$(window.document).on("contextmenu", function(event) { // 마우스 우클릭 메뉴 이벤트 해제
		return false;
	});

	boxButtonsClickFn();

	$('#closeBtn').on('click', function(){
		window.open('about:blank', '_self').close();
	})
	
})

function boxButtonsClickFn() {
	$('#submitBtn').on('click', function() {

		if (!$('.selectedFile').html()) {
			alertify.alert("사진 파일을 선택해주세요!");
		} else {
				var submitHtml = $('.selectedFile').html();
				alertify.confirm(submitHtml + "<br>이력서 사진으로 등록하시겠습니까?", function(event) {
				if (event) {
					var submitImgNo = $('.selectedFile').parent(".files").find('.fileboxIcon img').attr('src');
					alert(submitImgNo);
					$(opener.document).find('#resume_img_input').val(submitImgNo);
					$(opener.document).find('#resume_img_box').html("");
					$(opener.document).find('#resume_img_box').append(submitHtml);
					
					alertify.log("등록 완료");
					window.open('about:blank', '_self').close();
				} else {
					alertify.error("사진 등록이 취소되었습니다");
				}
			})
		}

	});

	$('#closeBtn').on('click', function() {

	})

}
function allClick(number, file_extension) {

	$("#box").find(".files").on('mousedown', function(e) {
		e.preventDefault();
		if (e.which == 3) {

			alertify.confirm($(this).html() + "삭제하시겠습니까?", function(e) {
				if (e) {
					$.ajax({
						url : "/resume/file/deleteFile?file_no=" + number,
						method : "POST",
						success : function() {
							alertify.log("삭제완료");
							goListNum = $('#goBack').attr("parent");
							fileBoxList(goListNum);
						}
					})
				} else {

				}
			});
		} else if (e.which == 1) {
			var f_extension = "" + file_extension;
			if (f_extension == "folder")
				fileBoxList(number);
			else {
				selectedFile($(this));
			}
		}

		$("#box").find(".files").off('mousedown');
	});
}

$(function() {

	$(".fileDrop").on("drop", function(event) {
		event.preventDefault();
		var files = event.originalEvent.dataTransfer.files;
		var file = files[0];

		// console.log(file);

		var formData = new FormData();

		formData.append("file", file);
		// formData.append("aa", "bb");
		var p_no = $('#goBack').attr("parent");
		if (!p_no)
			p_no = "0";
		$.ajax({
			url : '/resume/file/upload?p_no=' + p_no,
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			type : 'POST',
			success : function() {
				fileBoxList(p_no);
			}
		})
	});

});

$(function() {

	$('.uploadedList').on('click', 'small', function() {
		var that = $(this);

		$.ajax({
			url : '/resume/file/deleteFile',
			type : 'post',
			data : {
				fileName : $(this).attr('data-src')
			},
			dataType : 'json',
			success : function(result) {
				if (result == 'deleted') {
					that.parent('div').remove();
				}

				fileBoxList();
			}
		})
	});
});

function fileBoxList(file_no) {
	if (!file_no)
		file_no = 0;
	$.ajax({
		url : '/resume/file/list',
		type : 'text',
		method : 'post',
		data : {
			file_no : file_no
		},
		dataType : 'json',
		success : function(item) {
			showfileBoxList(item, file_no);
		}
	})
}

function showfileBoxList(list, parent) {
	$('#box').html("");
	parent = parseInt(parent);
	if (parent && parent > 0) {

		var goback;
		goback = "";
		goback += "<div class='files col-md-1'>";
		goback += '<button type="button" onclick="goParent(' + parent + ')"class="btn btn-default btn-lg fileboxIcon" id="goBack" parent="' + parent + '">';
		goback += '<i class="glyphicon glyphicon-folder-open" aria-hidden="true"></i>';
		goback += '</button>';
		goback += "<br> <span>" + "뒤로가기" + "</span>";
		goback += "</div>";
		$('#box').append(goback);
	}
	for (var i = 0; i < list.length; i++) {
		var fileHtml;
		var a = '"' + list[i].file_no + '"';
		fileHtml = "";
		fileHtml += "<div class='files'>";

		fileHtml += '<button type="button" onmousedown=allClick("' + list[i].file_no + '",' + '"' + list[i].file_extension + '") class="btn btn-default btn-lg fileboxIcon" id="' + list[i].file_no
				+ '">';
		switch (list[i].file_extension) {
		case "jpeg":
		case "jpg":
		case "gif":
		case "png":
			/*
			 * fileHtml += '<i class="glyphicon glyphicon-picture"
			 * aria-hidden="true"></i>';
			 */
			fileHtml += '<img src=/resume/file/displayFile?fileName=' + list[i].file_route + '>';
			break;

		case "folder":
			fileHtml += '<i class="glyphicon glyphicon-folder-open" aria-hidden="true"></i>';
			break;
		default:
			fileHtml += '<i class="fa fa-question fa-1x" aria-hidden="true"></i>';
			break;
		}

		f_name = list[i].file_name;
		if (f_name.length > 10)
			f_name = f_name.substring(0, 10) + "...";
		fileHtml += '</button>';
		fileHtml += "<br> <span>" + f_name + "</span>";
		fileHtml += "</div>";
		$('#box').append(fileHtml);

	}
}

function filesClick(file_no) {
	fileBoxList(file_no);
}

function goParent(file_no) {
	$.ajax({
		url : "/resume/file/fileParent",
		data : {
			file_no : file_no
		},
		method : 'post',
		datatype : "text",
		success : function(parent) {
			fileBoxList(parent);
		}

	});
}

function createFolder() {
	if ($("#goBack").html() == null)
		parent_no = 0;
	var parent_no;
	parent_no = $("#goBack").attr("parent");
	alertify.prompt("생성할 폴더 이름을 입력해주세요.", function(e, folder_name) {
		if (e) {
			$.ajax({
				url : "/resume/file/folderCreate",
				method : "POST",
				data : {
					file_parent : parent_no,
					file_name : folder_name,
					file_extension : "folder"
				},
				success : function() {
					alertify.success(folder_name + "폴더가 생성되었습니다.");
					fileBoxList(parent_no);
				}
			})
		} else {
			alertify.error("취소되었습니다");
		}
	}, "이름");
	return false;

}

function getOriginalName(fileName) {

	if (checkImageType(fileName)) {
		return;
	}

	var idx = fileName.indexOf("_") + 1;
	return fileName.substr(idx);

}

function getImageLink(fileName) {

	if (!checkImageType(fileName)) {
		return;
	}
	var front = fileName.substr(0, 12);
	var end = fileName.substr(14);

	return front + end;

}

function checkImageType(fileName) {

	var pattern = /jpg|gif|png|jpeg/i;

	return fileName.match(pattern);

}

function selectedFile($event) {
	$('.fileboxIcon').removeClass('active');
	$('.fileboxIcon').removeClass('selectedFile');
	$event.find('.fileboxIcon').addClass("active");
	$event.find('.fileboxIcon').addClass("selectedFile");

}
