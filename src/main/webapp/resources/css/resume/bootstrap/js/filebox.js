$(function() {
	$(".fileDrop").on("dragenter dragover", function(event) {
		event.preventDefault();
	});
	fileBoxList(); // 파일목록 불러오기

	var timeoutId = 0;

	var isClick = 0;

	var timer;

	$("#box").find("div").on("click", function() {
		alert("!!@!#")
	})

})

function allClick(number, file_extension) {
	alert("??");
	$("#box").find(".files").on('mousedown', function(e) {
		alert("들어오나");
		if (e.which == 3) {
			e.preventDefault();
			alertify.confirm($(this).find("span") + "삭제하시겠습니까", function(e) {
				if (e) {
					$.ajax({
						url : "/resume/file/deleteFile",
						data : "33333",
						success : function(){
							alertify.log("aaa");
						}
					})
					
				} else {
					alert("취소")
				}
			});
		} else if (e.which == 1) {
			var f_extension = "" + file_extension;
			if(f_extension == "folder")
				fileBoxList(number);
			else{
				alert("다운로드 or 선택 구현 ㄱㄱ");
			}
			
		}
	});
}

$(function() {

	$(".fileDrop").on("drop", function(event) {
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
			url : '/resume/file/uploadAjax?p_no=' + p_no,
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			type : 'POST',
			success : function(data) {
				alert(data);
				var str = "";

				if (checkImageType(data)) {
					str = "<div><a href=displayFile?fileName=" + getImageLink(data) + ">" + "<img src='displayFile?fileName=" + data + "'/>" + "</a><small data-src=" + data + ">X</small></div>";
				} else {
					str = "<div><a href='displayFile?fileName=" + data + "'>" + getOriginalName(data) + "</a>" + "<small data-src=" + data + ">X</small></div></div>";
				}

				$(".uploadedList").append(str);
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
			dataType : 'text',
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
		goback += "<div class='files'>";
		goback += '<button type="button" onclick="goParent(' + parent + ')"class="btn btn-default btn-lg fileboxIcon" id="goBack" parent="' + parent + '">';
		goback += '<i class="glyphicon glyphicon-folder-open" aria-hidden="true"></i>';
		goback += '</button>';
		goback += "<br> <span>" + "뒤로가기" + "</span>";
		goback += "</div>";
		$('#box').append(goback);
	}
	for (var i = 0; i < list.length; i++) {
		var fileHtml;
		var jpg = "" + list[i].file_extension;
		fileHtml = "";
		fileHtml += "<div class='files'>";
		fileHtml += '<button type="button" onmousedown="allClick(' + list[i].file_no + ',' + jpg + ')"class="btn btn-default btn-lg fileboxIcon" id="' + list[i].file_no + '">';
		switch (list[i].file_extension) {
		case "jpeg":
		case "jpg":
		case "gif":
		case "png":
			/*
			 * fileHtml += '<i class="glyphicon glyphicon-picture"
			 * aria-hidden="true"></i>';
			 */
			fileHtml += '<img src=displayFile?fileName=' + list[i].file_route + '>';
			break;

		case "folder":
			fileHtml += '<i class="glyphicon glyphicon-folder-open" aria-hidden="true"></i>';
			break;
		default:
			fileHtml += '<i class="fa fa-question fa-1x" aria-hidden="true"></i>';
			break;
		}

		fileHtml += '</button>';
		fileHtml += "<br> <span>" + list[i].file_name + "</span>";
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
