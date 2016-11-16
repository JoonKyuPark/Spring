
<%@page import="java.util.List"%>
<%@page import="javax.swing.ListModel"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Calendar cal = Calendar.getInstance();

	String strYear = request.getParameter("year");
	String strMonth = request.getParameter("month");
	
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
	int date = cal.get(Calendar.DATE);
	
	if(strYear != null){
		year = Integer.parseInt(strYear);
		month = Integer.parseInt(strMonth);
	}else{
	}
	cal.set(year, month, 1);
	
	int startDay = cal.getMinimum(Calendar.DATE);
	int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int start = cal.get(Calendar.DAY_OF_WEEK);
	int newLine = 0;
	
	Calendar todayCal = Calendar.getInstance();
	SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
	SimpleDateFormat format2 = new SimpleDateFormat("yyyy/MM/dd");
	int intToday = Integer.parseInt(format.format(todayCal.getTime()));
	
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<!------- JQUERY -------->
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<!------- BOOTSTRAP -------->
<script src="../bootstrap/bootstrap-select.min.js"></script>
<link href="../bootstrap/bootstrap-select.min.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<!------- XE FONT -------->
<link rel="stylesheet" href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css">
<link rel="stylesheet" href="../../../../resources/css/exam/Exam.css">
<script src="../js/Exam.js"></script>
<head>
<meta charset="UTF-8">
<title>Etp Exam Main</title>
</head>
<body id="Etp_Exam_main">
	<div>
		<div class="col-md-2"> Logo </div>
		<div class="col-md-8"> TopMenu </div>
		<div class="col-md-2"> Empty </div>
		<div class="col-md-2">
			<ul class="nav nav-pills">
				<li><a href="etp_Exam_Main">시험메인</a></li>
				<li><a href="Etp_Exam_List.jsp">시험목록</a></li>
				<li><a href="etp_Exam_Create">시험등록</a></li>
				<li><a href="Etp_Question_Reg.jsp">시험문제등록</a></li>
				<li><a href="Etp_Question_List.jsp">시험문제목록</a>
			</ul>
		</div>
		<div class="examTableOuter col-md-8">
			<div class="col-md-12">
			<table class = "Calendar">
				<tr>
					<td align="center">
						<a href="etp_Exam_Main?year=<%=year-1%>&month=<%=month%>">
							<i class="xi-angle-left xi-x"></i>
						</a>
						<%if(month > 0){ %>
						<a href="etp_Exam_Main?year=<%=year%>&month=<%=month-1%>">
							<i class="xi-angle-left-min xi-x"></i>
						</a>
						<%}else{ %>
							<i class="xi-angle-left-min xi-x"></i>
						<%} %>
						<i class="xi-ellipsis-h xi-x"></i> 
						&nbsp; &nbsp;
						<%=year %> &nbsp; &nbsp;
						<%=month+1 %> &nbsp; &nbsp;
						<i class="xi-ellipsis-h xi-x"></i>
						<%if(month < 11){ %>
						<a href="etp_Exam_Main?year=<%=year%>&month=<%=month+1%>">
							<i class="xi-angle-right-min xi-x"></i>
						</a>
						<%}else{ %>
							<i class="xi-angle-right-min xi-x"></i>
						<%} %>
						<a href="etp_Exam_Main?year=<%=year+1%>&month=<%=month%>">
							<i class="xi-angle-right xi-x"></i>
						</a>
					</td>
				</tr>
			</table>
			<br>
			<br>
			<table class="Calendar">
				<tr style = "height : 30px">
				<td class="weekName"><font color="red">일</font></td>
				<td class="weekName">월</td>
				<td class="weekName">화</td>
				<td class="weekName">수</td>
				<td class="weekName">목</td>
				<td class="weekName">금</td>
				<td class="weekName"><font color="#6173FF">토</font></td>
				</tr>
				<tr>
				<%
				for(int i = 1; i < start; i++){
					out.print("<td>&nbsp;</td>");
					newLine++;
				}
				for(int i = 1; i <= endDay; i++){
					String color = "";
					if(newLine==0){
						color = "red";
					}else if(newLine==6){
						color = "#6173FF"; 
					}else{
						color = "black";
					}
					
					String strUseDate = Integer.toString(year);
					if(Integer.toString(month+1).length() == 1){
						strUseDate += "0" + Integer.toString(month+1);
					}else{
						strUseDate += Integer.toString(month+1);
					}
					if(Integer.toString(i).length()==1){
						strUseDate += "0" + Integer.toString(i);
					}else{
						strUseDate += Integer.toString(i) ;
					}
					int intUseDate = Integer.parseInt(strUseDate);
				
					
					String strCompareDate = Integer.toString(year) + "/";
					if(Integer.toString(month+1).length() == 1){
						strCompareDate += "0" + Integer.toString(month+1) + "/";
					}else{
						strCompareDate += Integer.toString(month+1) + "/";
					}
					if(Integer.toString(i).length()==1){
						strCompareDate += "0" + Integer.toString(i);
					}else{
						strCompareDate += Integer.toString(i);
					}

					String todayColor = "#FFFFFF";
					if(intUseDate == intToday){
						todayColor = "#FFA4A4";
					}
					out.println("<td class = 'dateTd' valign='top' align='left' height = '100px' bgcolor='"+todayColor+"'nowrap>");	
				%><font color='<%=color %>'>
					<%=i %>
				  </font>
				<%
					/*------------------내용입력------------------*/
					
				
				
				out.println("</td>");
				newLine++;
				
				if(newLine==7){
					out.println("</tr>");
					if(i <= endDay){
						out.println("<tr>");
					}
					newLine=0;
				}
				}%>
				</tr>
			</table>
			</div>
		</div>
		<div class="col-md-2">Right Menu(3)</div>
		<div class="col-me-1"></div>
		<div class="footer col-md-10"> footer </div>
		<div class="col-me-1"></div>
	</div>
</body>
</html>