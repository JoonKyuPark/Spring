<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<!------- BOOTSTRAP -------->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!------- JQUERY -------->
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<style>
.col-md-12
{
   border : 1px red solid;
}
ul
{
padding:0px;list-style:none

}


</style>
<title>인재정보 리스트</title>
</head>
<body>
<div class="container">
   <div class="body-1">
      <h4>인재정보 리스트</h4>
      <div class="col-md-12">   
         <table id="mytable" class="table table-bordred table-striped">
            <tr>
               <th><input type="checkbox" id="checkall" /></th>
               <th>이름</th>
               <th>이력서 정보</th>
               <th>희망연봉</th>
               <th>특기사항</th>
               <th align="center">이력서 등록일</th>
            
            
            </tr>
            
      <c:forEach items="${list }" var="Etp_mem_infoVO">    
            
            <tr>
                <td><input type="checkbox" class="checkthis"/></td>
                <td>
                	<ul class="name_ul" >
                		<li>${Etp_mem_infoVO.member_name}</li>
                		<li>${Etp_mem_infoVO.member_gender} (${Etp_mem_infoVO.age})</li>
                	</ul>
                 </td>
                
                
                
                
                <td>
                	<ul class="resume_ul">
                		<li>${Etp_mem_infoVO.resume_title}</li>
                		<li>${Etp_mem_infoVO.work_year}개월</li>
                	</ul>
				</td>
                <td>
                	<ul class="resume_ul">
                		
                		<li>${Etp_mem_infoVO.hope_income}</li>
                		
                	</ul>
                 </td>
                <td>
					<ul >
                		<li>자격증1</li>
                		<li>자격증2</li>
                	
                	</ul>
			
				</td> 
				
				  
                <td>
                
             	  <ul>
                		<li>${Etp_mem_infoVO.resume_date}</li>
                		
               	</ul>
                  
                </td>         
            </tr>    
            
            </c:forEach>  
            
         </table><!--table-->   
        </div><!--col_md_12-->
   </div><!--body-1-->
   <div class="body-2">
      <div class = "col-md-12">
      
         
         <div class = "paging" align="center">
            <ul class="pagination">
               <li class="disabled">
                  <a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a>
               </li>
               <li class="active"><a href="#">1</a></li>
               <li><a href="#">2</a></li>
               <li><a href="#">3</a></li>
               <li><a href="#">4</a></li>
               <li><a href="#">5</a></li>
               <li>
                  <a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a>
               </li>
            </ul>
         </div>
      </div><!--col-md-12-->
   </div>
</div><!-- list container -->
</body>
</html>