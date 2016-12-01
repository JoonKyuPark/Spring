	function content(){
		var content = document.getElementsByClassName('question_content');
		for(var i  = 0; i < content.length; i++){
			var contents = content[i].innerHTML;
			var inner = contents.replace(/<br>/gi, ' ');
			content[i].innerHTML='<nobr>' + inner + '</nobr>';
		}
	}

window.onload = function() {
	$('.btn-info').hover(function() {
		$(this).css('background', '#6695BE');
	});
	$('.btn-info').mouseout(function() {
		$(this).css('background', '#3679B5');
	});
	content();
}