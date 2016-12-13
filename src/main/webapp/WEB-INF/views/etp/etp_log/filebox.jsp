<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>


<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<script type="text/javascript" src="../../../../resources/js/recruit/alertify.min.js"></script>

<link rel="stylesheet" type="text/css"  href="../../../../resources/js/recruit/alertify.core.css">
<link rel="stylesheet" type="text/css"  href="../../../../resources/js/recruit/alertify.default.css">








<script type="text/javascript">

$(function(){
	$('#enter').on('click',function(){
	
		
		
	var file_parent = $('#goBack').attr('parent');	
	
	if(!file_parent)
		file_parent ='0';
	
	

	var file_route="/route/";	
	var file_step="0";
	var file_extension ="file";
	var file_name =$('.subinput').val();

	         $.ajax({
	        	 url : '/etp/etp_log/subDataInput',
	        	 type:"GET",
	        	 dataType:'text',
	             data : {
	            	  file_name :file_name,
			    	  file_route : file_route,
			    	  file_step : file_step,
			    	  file_extension :file_extension,
			    	  file_parent: file_parent
	                                       
	        	  },
	        	   success: function(data){
	        		 alertify.success(file_name+"폴더가 생성되었습니다."); 
	        		
	        			 getAllList(file_parent);
	        	   
	        	   }
	         
	         
	    
		});
		
	});

});

function getAllList(file_no){

	 if(!file_no)
	 file_no =0;
	 $.ajax({
         url : '/etp/etp_log//AlluploadData',
       	 type:'GET',
    	
    	 data : {
          	  file_no: file_no
                              
      	  },
    	  success: function(item){
	   		
    	 showfileBoxList(item, file_no);
    	   
    	   }
     
     

	});
	
	
}



function showfileBoxList(list, parent) {
	   $('#box').html("");
	   parent = parseInt(parent);
	     
	   if (parent && parent > 0) { //좀 있 생각하고

	      var goback;
	      goback = "";
	      goback += "<div class='files'>";
	      goback += '<button type="button" onclick="goParent('
	            + parent
	            + ')"class="btn btn-default btn-lg fileboxIcon" id="goBack" parent="'
	            + parent + '">';
	      goback += '<i class="glyphicon glyphicon-folder-open" aria-hidden="true"></i>';
	      goback += '</button>';
	      goback += "<br> <span>" + "뒤로가기" + "</span>";
	      goback += "</div>";
	      $('#box').append(goback);
	   }
	   for (var i = 0; i < list.length; i++) {
	      var fileHtml;

	      fileHtml = "";
	      fileHtml += "<div class='files'>";
	      fileHtml += '<button type="button" onclick="onclick2('+ list[i].file_no+')"class="btn btn-default btn-lg fileboxIcon" id="'+ list[i].file_no + '">';
	            
	            
	      switch (list[i].file_extension) {
	      case "jpeg":
	      case "jpg":
	      case "gif":
	      case "png":
	         /*
	          * fileHtml += '<i class="glyphicon glyphicon-picture"
	          * aria-hidden="true"></i>';
	          */ 
	         fileHtml += '<img src=displayFile?fileName=' + list[i].file_route
	               + '>';
	         break;

	      case "file":
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






	function onclick2(){
		var file_no = $('.fileboxIcon').attr('id');
		   $.ajax({
	        	 url : '/etp/etp_log/subUploadData',
	          	 type:"GET",
	        	 dataType:'text',
	             data : {
	            	 file_no: file_no
	    			  },
	        	   success: function(data){
	        	 	 getAllList(file_no);
	        	         	   
	        	   }
	    
		});
	};


	
	function goParent(parent){
	
			   $.ajax({
	        	 url : '/etp/etp_log/gobackUpload',
	          	 type:"GET",
	        	 dataType:'text',
	             
	        	 data : {
	              	 file_no: parent
	    			  },
	        	   success: function(data){
	      
	        		   
	       		 getAllList(data);
	        	         	   
	        	   }
	    
		});
		

		
		
		
	};



</script>




</head>
<body>




	<input class="btn btn-default" data-target="#layerpop"data-toggle="modal" value="폴더생성">

	<div class="modal fade" id="layerpop">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
					<!-- header title -->
					<h4 class="modal-title">Header</h4>
				</div>
				<!-- body -->

				<div class="modal-body">
					<input type="text" class="subinput">
				</div>

			


				<!-- Footer -->
				<div class="modal-footer">

					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="enter">확인</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
		
		
	</div>




			<div id="box">
			

				</div>







</body>
</html>