<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<body>
	<div class="email" style="margin-top: 70px;">
		<form
			action="<%=request.getContextPath()%>/registrationServlet?flag=verify"
			method="post">
			<label for="email">Email Id:</label> <input type="text" id="emailId"
				name="email" placeholder="email@gmail.com"><br> <input
				type="submit" value="Verify"
				style="margin-left: 104px; margin-top: 10px; margin-bottom: 10px;">
		</form>
		<%-- <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
		<c:forEach items="${sessionScope.verified }" var="u">
		<input type="hidden" id="uDataColor" name="hdndata" value="${u.color }">
		<input type="hidden" id="uDataID" name="uDataID" value="${u.user_id }">
		</c:forEach> --%>
		<label>Not a member?</label><a href="registration.jsp"><input
			type="button" value="Register"></a>
	</div>
</body>
</head>
</html>
