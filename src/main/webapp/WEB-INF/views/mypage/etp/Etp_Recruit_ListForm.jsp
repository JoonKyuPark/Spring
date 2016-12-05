<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>채용정보번호</th>
			<th>채용공고제목</th>
			<th>경력사항</th>
			<th>접수시작일</th>
			<th>접수마감일</th>
			<th>채용분야</th>
		</tr>
		
		<c:forEach items="${etp_recruit_list}" var="Etp_RecruitVO" varStatus="status">
			<tr>
				<td>${Etp_RecruitVO.recruit_no}</td>
				<td><a href="Etp_Recruit_ReadForm">${Etp_RecruitVO.recruit_title}</a></td>
				<td>${Etp_RecruitVO.career_check}</td>
				<td>${Etp_RecruitVO.receive_sdate}</td>
				<td>${Etp_RecruitVO.receive_ddate}</td>
				<td>${Etp_RecruitVO.recruit_field}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>