<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome</title>
<script>
	function displayLogoutBtn() {
		console.log("Inside displaylogoutbtn");

		var btn = document.getElementById("logoutBtnId");
		btn.style.display = "block";
		document.getElementById("signUpBtnId").style.display = "none";
	}
</script>
<body onLoad="displayLogoutBtn()">
	<div class="wellcome" style="border: 0px">
		<h2>
			Welcome <label
				style="background-color: #ABB27D; border: 0px; color: green"><%=session.getAttribute("uname")%></label>
			to the shoulder surfing resistant system
		</h2>
	</div>
</body>
</head>
</html>
