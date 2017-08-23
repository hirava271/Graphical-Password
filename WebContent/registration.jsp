<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link rel="shortcut icon" href="">
<link href="<%=request.getContextPath() %>/css/signup.css"
	rel="stylesheet">
<body>

	<div class="signup">
		<h2>Signup Form</h2>

		<form
			action="<%=request.getContextPath()%>/registrationServlet?flag=insert"
			onsubmit="return validation()" method="post">

			<label>Name* : </label> <input type="text" id="nameId" name="name"
				placeholder="Name"><br> <label>Contact No* : </label> <input
				type="number" id="numberId" name="number" placeholder="Number"><br>
			<label>Email Id* : </label> <input type="email" id="emailId"
				name="email" placeholder="email@gmail.com"><br> <label>DOB
				: </label> <input type="date" id="dateId" name="date"><br> <label>Password*
				(It must contains small letters a to h and digits 1 to 8) : </label> <input
				type="password" id="pwdId" name="pwd"><br> <label>Retype
				Password* : </label> <input type="password" id="repwdId" name="repwd"><br>
			<label>Password Color* : </label> <select id="colorId" name="color"
				onchange="selectedColor(this)">
				<option value="0" selected="selected">Select Color</option>
				<option value="8">Black</option>
				<option value="7">Red</option>
				<option value="6">Green</option>
				<option value="5">Blue</option>
				<option value="4">Orange</option>
				<option value="3">Yellow</option>
				<option value="2">Purple</option>
				<option value="1">Pink</option>
			</select> <input type="text" name="colorDisplay" id="colorDisplayId">

			<div class="clearfix">
				<input type="submit" id="signupbtn" value="Sign Up"
					style="background-color: #4CAF50; border: none; color: white; padding: 10px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 10px 2px; cursor: pointer; width: 100%; height: 40px;">
			</div>
		</form>

	</div>

	<script type="text/javascript">
		function selectedColor(obj) {
			var color = obj.options[obj.selectedIndex].text;
			var clr = document.getElementById("colorDisplayId");
			clr.style.background = color;
		}
		function validation() {
			var name = document.getElementById("nameId").value;
			var number = document.getElementById("numberId").value;
			var email = document.getElementById("emailId").value;
			var pwd = document.getElementById("pwdId").value;
			var repwd = document.getElementById("repwdId").value;
			var color = document.getElementById("colorId").value;
			var ok = true;
			console.log("PAssword:::::" + pwd);

			/* console.log("HELLO I AM INSIDE BEFOREUNLOAD");
			localStorage.setItem(name, name);
			localStorage.setItem(number, number);
			localStorage.setItem(email, email);
			localStorage.setItem(color,color);
			 */
			if (pwd == "" || repwd == "" || name == "" || number == ""
					|| email == "" || color == "") {
				confirm("Please enter all required information.");
				ok = false;
				window.location.href = "registration.jsp";
			} else {
				if (pwd != repwd) {
					document.getElementById("pwdId").style.borderColor = "#E34234";
					document.getElementById("repwdId").style.borderColor = "#E34234";
					ok = false;
					alert("Password and Retype Password should be same...!!!");
				} else {
					alert("Passwords Match...!!!");
				}
			}

			return ok;
		}
	</script>
</body>
</html>