<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var date  = new Date();
	with(document){
		write("년 : "+date.getYear()+"<br />");
		write("월 : "+date.getMonth()+"<br />");
		write("일 : "+date.getDate()+"<br />");
		write("요일 : "+date.getDay()+"<br />");
		write("시 : "+date.getHours()+"<br />");
		write("분 : "+date.getMinutes()+"<br />");
		write("초 : "+date.getSeconds());

	}
</script>
</head>
<body>

</body>
</html>