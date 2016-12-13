<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>채용공고</title>
<script type="text/javascript"
   src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<!-- Bootstrap -->
<link href="../../../resources/css/recruit/mem/bootstrap.min.css"
   rel="stylesheet">
<link href="../../../resources/css/recruit/mem/custom2.css"
   rel="stylesheet">
<link href="../../../resources/css/recruit/mem/kfonts2.css"
   rel="stylesheet">
<link href="../../../resources/css/recruit/mem/grayscale.css"
   rel="stylesheet">
<link href="../../../resources/css/recruit/mem/grayscale.min.css"
   rel="stylesheet">
<link rel="stylesheet" type="text/css"
   href="../../../resources/css/recruit/mem/mem_Recruit_List_Style.css" />
<script type="text/javascript"
   src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">

   var rno = "${recruit_read.getRecruit_no()}";
   
   $(function() {
      $("#allCheck").click(function() {
         if ($("#allCheck").prop("checked")) {
            $("input[type=checkbox]").prop("checked", true);
         } else {
            $("input[type=checkbox]").prop("checked", false);
         }
      })
   })

   //스크랩 추가할때 
   function button1_click(rno, count){

      $.ajax({
         type : 'post',
         url : '/clip',
         headers : {
            "Content-Type" : "application/json",
            "X-HTTP-Method-Override" : "POST"
         },
         dataType : 'text',
         data : JSON.stringify({
            recruit_no : rno
         }),//stringify문자열을 json으로
         success : function(result) {
            console.log("result: " + result);
            if (result == 'SUCCESS') {
               alert("등록 되었습니다.");
               $("#clip_count").text(count+1);
            }
         }

      });
   };
   
    function button4_click(rno) {
       window.open('/receive/mem_Join_Receive_Reserv_Create_Form?rno='+rno,'name','menubar=yes,resizable=yes,scrollbars=yes,status=yes,titlebar=yes,toolbar=yes,location=yes,width=550,height=700');
    }
</script>
</head>
<body>
   <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
   <div class="navbar-white col-md-12" style="z-index: 5000;">
      <div class="navbar-header">
         <button type="button" class="navbar-toggle" data-toggle="collapse"
            data-target=".navbar-main-collapse">
            Menu <i class="fa fa-bars"></i>
         </button>
         <a class="navbar-brand page-scroll" href="#page-top"> JOB <span
            class="light">IS</span>
         </a>
      </div>
      <div
         class="collapse navbar-collapse navbar-right navbar-main-collapse">
         <ul class="nav navbar-nav">
            <li class="hidden"><a href="#page-top"></a></li>
            <li><a class="page-scroll" href="#about">전체 채용공고</a></li>
            <li><a class="page-scroll" href="#download">시험</a></li>
            <li><a class="page-scroll" href="#download">스마트매칭</a></li>
            <li><a class="page-scroll" href="#contact">로그인</a></li>
         </ul>
      </div>
   </div>
   </nav>
   <br>
   <br>
   <br>
   <div id="list_back">
      <div class="container">
         <!--  <a href="Member_Recruit_List.jsp?id=all">전체</a> <a
            href="Member_Recruit_List.jsp?id=seoul">서울시</a> <a
            href="Member_Recruit_List.jsp?id=gg">경기도</a>
          -->
         <br> <br> <br> <br>
         <h2>전체 채용 공고</h2>
         <br> <br>
         <div class="row">

            <c:forEach var="i" begin="0" end="${recruit_list.size()-1}" step="1">
               <div class="col-lg-4">
                  <div class="recruit1">
                     <div class="row" id="recruit_title">
                        <div class="col-lg-8">
                           <a
                              href="/recruit/mem_Recruit_Read_Form?rno=${recruit_list[i].recruit_no}">${recruit_list[i].recruit_title}</a>
                        </div>
                        <div class="col-lg-4">
                           <div id="recruit_title2">
                              <center>모집 중</center>
                           </div>
                        </div>
                     </div>
                     <div class="row" id="recruit_title">
                        <div class="col-lg-3">
                           <center>
                              <div id="recruit_cont1">기간</div>
                              <h3>
                                 D-${d_day[i]}<a id=recruit_cont1></a>
                              </h3>
                           </center>
                        </div>
                        <div class="col-lg-3">
                           <center>
                              <div id="recruit_cont1">모집인원</div>
                              <h3>${recruit_list[i].recruit_number}
                                 <a id=recruit_cont1>명</a>
                              </h3>
                           </center>
                        </div>
                        <div class="col-lg-3">
                           <center>
                              <div id="recruit_cont1">지원자</div>
                              <h3>
                                 7<a id=recruit_cont1>명</a>
                              </h3>
                           </center>
                        </div>
                        <div class="col-lg-3">
                           <center>
                              <div id="recruit_cont1">지역</div>
                              <h3>${recruit_addr[i]}</h3>
                           </center>
                        </div>
                     </div>

                     <div class="row">
                        <div class="col-lg-8 recruit_money">
                           <h5>
                              <a id="recruit_cont1">급여&nbsp;:&nbsp;</a>${recruit_list[i].max_pay}원~${recruit_list[i].min_pay}원</h5>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-lg-8" id="recruit_cont1">
                           <h5>
                              <a id="recruit_cont1">&nbsp;&nbsp;&nbsp;회사명&nbsp;:&nbsp;</a>${etp_read_list[i].etp_name}</h5>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-lg-8" id="recruit_cont1">
                           <h5>
                              <a id="recruit_cont1">&nbsp;&nbsp;&nbsp;마감일&nbsp;:&nbsp;</a>${recruit_list[i].receive_ddate}</h5>
                        </div>
                        <a class="col-lg-2" id="heart"
                           onclick="button1_click(${recruit_list[i].recruit_no}, ${mem_clip_count[i] })">&#x2764;
                           <a class="col-lg-2" id="clip_count">${mem_clip_count[i]}</a>
                        </a>
                     </div>
                     <div class="row recruit_bottom">
                        <div class="col-lg-8">
                           <div id="recruit_field">
                              <a id="recruit_cont1">채용분야</a><br> 컴퓨터&nbsp;&nbsp; >
                              &nbsp;&nbsp;${recruit_list[i].recruit_field }
                           </div>
                        </div>
                        <div class="col-lg-3">
                           <button id="button4"
                              onclick="button4_click(${recruit_list[i].recruit_no});"
                              class="btn btn-primary btn-lg outline">즉시지원</button>
                        </div>
                        <div class="col-lg-1"></div>
                     </div>
                  </div>
               </div>
               <c:if test="${i==2}">&nbsp;&nbsp;&nbsp;<br>
                  <br>
                  <br>
                  <br>
               </c:if>
            </c:forEach>
         </div>

         <br>

         <div class="box-footer">

            <div class="text-center">
               <ul class="pagination">

                  <c:if test="${pageMaker.prev}">
                     <li><a
                        href="mem_Recruit_List_Form${pageMaker.makeQuery(pageMaker.startPage-1) }">&laquo;</a></li>
                  </c:if>

                  <c:forEach begin="${pageMaker.startPage }"
                     end="${pageMaker.endPage }" var="idx">
                     <li
                        <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
                        <a href="mem_Recruit_List_Form${pageMaker.makeQuery(idx)}">${idx}</a>
                     </li>
                  </c:forEach>

                  <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                     <li><a
                        href="mem_Recruit_List_Form${pageMaker.makeQuery(pageMaker.endPage+1)}">&raquo;</a></li>
                  </c:if>

               </ul>
            </div>

         </div>
         <!-- /.box-footer-->
      </div>
      <center>
         <br> <br> <br> <br> <br> <br> <br>
         <br> <img
            src="../../../resources/css/recruit/mem/images/estimateBg.png"
            width="400px" height=auto>
         <div class="col-lg-12" id="footer_foot">
            <div class="container" id="footer_con_div">
               <a id="footer_con">회사소개</a> <a id="footer_con">이용방법</a> <a
                  id="footer_con">잡이즈</a> <a id="footer_con">이용약관</a> <a
                  id="footer_con">FAQ</a> <a id="footer_con">개인정보취급방침</a>
            </div>
            <hr id="hr_line">
            <div class="container" id="footer_con_div">
               <a id="footer_con_detail">(주) 잡이즈 </a><br> <a
                  id="footer_con_detail">대표이사 : 한무영</a><br> <a
                  id="footer_con_detail">CFO : 김민정 박세령 박준규 박찬하 정현우 최형묵 </a><br>
               <a id="footer_con_detail">사업자등록번호 : 111-1111-1111</a><br> <a
                  id="footer_con_detail">주소 : 서울특별시 금천구 가산동 371-28</a>
            </div>
         </div>
         
      </center>
   </div>
</body>
</html>