   $(function() {
      $('.tr').hover(function() {
         $(this).children().css('background', '#fce4e2');
      },function(){
         $(this).children().css('background', '#FFF3F3');
      });
   });