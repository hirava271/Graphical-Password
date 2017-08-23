<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GraphicalPassword</title>
<link href="<%=request.getContextPath()%>/css/circle.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script>
</script>
<body>

	<div class="mainbox">

		<div class="img3">
			<img src="<%=request.getContextPath()%>/images/3.png" width="auto"
				height="180" alt="main">
		</div>

		<div class="img4">
			<img src="<%=request.getContextPath()%>/images/4.png" width="auto"
				height="180" alt="main">
		</div>

	</div>

	<div>
		<ul>
			<li><a href="<%=request.getContextPath()%>/home.jsp">Home</a></li>
			<li><a href="<%=request.getContextPath()%>/about.jsp">About
					Us</a></li>
			<li><a href="<%=request.getContextPath()%>/contact.jsp">Contact
					Us</a></li>
			<li id="signUpBtnId" style="display: block"><a href="<%=request.getContextPath()%>/registration.jsp">SignUp</a></li>
			<li id="logoutBtnId" style="display: none"><a href="<%=request.getContextPath()%>/home.jsp">Logout</a>
		</ul>
		<div class="h1box">

			<h1>Graphical Password</h1>
		</div>
	</div>
</head>
<body>

</body>
</html>