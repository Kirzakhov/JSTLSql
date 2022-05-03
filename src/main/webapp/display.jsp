<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/edubridge" user="root" password="0000"/>
	
	<sql:query var="rs" dataSource="${db}">select * from demo5</sql:query>
	
	<c:forEach items="${rs.rows}" var="record">
		<c:out value="${record}"></c:out> <br>
<!--	<c:out value="${record.id}"></c:out> : <c:out value="${record.name}"></c:out> : <c:out value="${record.marks}"></c:out><br> -->
	</c:forEach>
	
</body>
</html>