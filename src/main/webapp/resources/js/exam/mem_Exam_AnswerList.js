   window.onload = function() {
      
      
      $('.answer_info').click(function() {
         if ($(this).parent().next().attr('style') == 'display: none;') {
            $(this).parent().next().show(500);
         } else {
            $(this).parent().next().hide();
         }

      });

      $('.correctBtn').click(
            function() {
               var ans_no = $(this).val();
               var btn = $(this)
               $.ajax({
                  type : 'GET',
                  datatype : 'text',
                  url : 'etp_Member_toCorrect?ans_no=' + ans_no,
                  success : function(data) {

                     btn.parent().parent().prev().find('label').empty();

                     btn.parent().parent().prev().append(
                           '<label>정답 여부 : 정답</label>');
                     swal({
                        title : " ",
                        text : '정답처리 되었습니다.',
                        type:'success',
                        confirmButtonText:'확인',
                        closeOnConfirm : false
                     });
                  }
               });
            });
      $('.incorrectBtn').click(
            function() {
               var ans_no = $(this).val();
               var btn = $(this)
               $.ajax({
                  type : 'GET',
                  datatype : 'text',
                  url : 'etp_Member_toIncorrect?ans_no=' + ans_no,
                  success : function(data) {
                     btn.parent().parent().prev().find('label').empty();

                     btn.parent().parent().prev().append(
                           '<label>정답 여부 : 오답</label>');
                     swal({
                        title : " ",
                        text : '오답처리 되었습니다.',
                        type:'error',
                        confirmButtonText:'확인',
                        closeOnConfirm : false
                     });
                  }
               });
            });
   }