	function content(){
		var content = document.getElementsByClassName('question_content');
		for(var i  = 0; i < content.length; i++){
			var contents = content[i].innerHTML;
			var inner = contents.replace(/<br>/gi, ' ');
			content[i].innerHTML='<nobr>' + inner + '</nobr>';
		}
	}
	$(function(){
		$('.etp_Exam_Table_tr').hover(
			function(){
				$(this).children().css('background', '#ffecdf');
			},function(){
				$(this).children().css('background', '#FFF3EB');
		});
	});
window.onload = function() {
	content();
}