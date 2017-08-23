<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>
<body>
	<script src="https://d3js.org/d3.v4.min.js"></script>
	<script>
		var rotCount = 0;
		;
		var degree = 45;
		var counter = 0;
		var cnter = 0;
		var temp = 7;
		var tempArray = new Array();
		var colors = new Array();

		colors[0] = [ 'pink', 8, 'e' ];
		colors[1] = [ 'purple', 5, 'f' ];
		colors[2] = [ 'yellow', 4, 'a' ];
		colors[3] = [ 'orange', 'a', 'b' ];
		colors[4] = [ 'blue', 'c', 2 ];
		colors[5] = [ 'green', 1, 'h' ];
		colors[6] = [ 'red', 'd', 6 ];
		colors[7] = [ 'black', 3, 'g' ];

		function selectedValue(orbitNumber) {
			console.log("Hello...." + cnter);
			//var pwd = 
			var selectedColor = document.getElementById("uDataColor").value;
			console.log("Selected Color : " + selectedColor);

			var user_id = document.getElementById("uDataID").value;
			console.log("User id...." + user_id);
			var user_idText = document.getElementById("user_id");
			user_idText.value = user_id;

			var user_name = document.getElementById("uDataName").value;
			console.log("User name...." + user_name);
			var user_nameText = document.getElementById("hdn_name");
			user_nameText.value = user_name;

			var temp = (selectedColor - 1 + cnter) % 8;
			var selectedChar = colors[temp][orbitNumber];
			console.log("Selected Char : " + selectedChar);

			var pwdTextBox = document.getElementById("pwd");
			pwdTextBox.value += selectedChar;
			console.log("PWD : " + pwdTextBox.value);
		}

		function rotateCircle(str) {
			//rotCount++;
			var flag = true;

			//console.log("Click..........:"+str);

			var pink = document.getElementById("pink");
			var purple = document.getElementById("purple");
			var yellow = document.getElementById("yellow");
			var orange = document.getElementById("orange");
			var blue = document.getElementById("blue");
			var green = document.getElementById("green");
			var red = document.getElementById("red");
			var black = document.getElementById("black");

			var color = new Array();
			color[0] = [ pink, 628.25 ];
			color[1] = [ purple, 549.75 ];
			color[2] = [ yellow, 471.25 ];
			color[3] = [ orange, 392.75 ];
			color[4] = [ blue, 314.25 ];
			color[5] = [ green, 235.75 ];
			color[6] = [ red, 157.75 ];
			color[7] = [ black, 0.25 ];

			if (str == "Clockwise") {
				cnter++;
				//console.log("CNTER CLKWISE : "+cnter);
				for (var j = 0; j < 8; j++) {
					var k = (j + cnter) % 8;
					//console.log("The value of K : "+k);
					if (k < 0) {
						k = k + 8;
					}
					k = Math.abs(k);
					tempArray[j] = color[k][1];
					color[j][0].style.strokeDashoffset = color[k][1];
				}
				for (var i = 0; i < 8; i++) {
					color[i][1] = tempArray[i];
				}
			}
			if (str == "Anticlock") {
				cnter--;
				//console.log("CNTR : "+cnter);
				for (var j = 0; j < 8; j++) {
					var k = (j + cnter) % 8;
					//console.log("The value of K : "+k);
					if (k < 0) {
						k = k + 8;
					}
					k = Math.abs(k);
					tempArray[j] = color[k][1];
					//console.log(k);
					color[j][0].style.strokeDashoffset = color[k][1];
				}
				for (var i = 0; i < 8; i++) {
					color[i][1] = tempArray[i];
				}
			}
		}
	</script>
</head>

<div class="email" style="margin-top: 70px;">

	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
	<c:forEach items="${sessionScope.verified }" var="u">
		<label for="email">Email Id:</label>
		<input type="text" id="emailId" name="email" value="${u.email }"
			disabled>
		<input type="hidden" id="uDataColor" name="hdndata"
			value="${u.color }">
		<input type="hidden" id="uDataID" name="uDataID" value="${u.user_id }">
		<input type="hidden" id="uDataName" name="hdnName" value="${u.name}">
	</c:forEach>
</div>
<div class="circle_move">
	<svg> <circle cx="150" cy="150" r="100" id="black" /> <circle
		cx="150" cy="150" r="100" id="red" /> <circle cx="150" cy="150"
		r="100" id="green" /> <circle cx="150" cy="150" r="100" id="blue" />
	<circle cx="150" cy="150" r="100" id="orange" /> <circle cx="150"
		cy="150" r="100" id="yellow" /> <circle cx="150" cy="150" r="100"
		id="pink" /> <circle cx="150" cy="150" r="100" id="purple" /> <text
		x="70" y="120" font-family="sans-serif" font-size="20px" fill="black">b</text>
	<text x="100" y="140" font-family="sans-serif" font-size="20px"
		fill="black">a</text> <text x="110" y="85" font-family="sans-serif"
		font-size="18px" fill="black">2</text> <text x="125" y="110"
		font-family="sans-serif" font-size="20px" fill="black">c</text> <text
		x="160" y="110" font-family="sans-serif" font-size="18px" fill="black">1</text>
	<text x="175" y="80" font-family="sans-serif" font-size="20px"
		fill="black">h</text> <text x="220" y="120" font-family="sans-serif"
		font-size="18px" fill="black">6</text> <text x="190" y="140"
		font-family="sans-serif" font-size="20px" fill="black">d</text> <text
		x="190" y="175" font-family="sans-serif" font-size="18px" fill="black">3</text>
	<text x="220" y="185" font-family="sans-serif" font-size="20px"
		fill="black">g</text> <text x="175" y="230" font-family="sans-serif"
		font-size="20px" fill="black">e</text> <text x="160" y="200"
		font-family="sans-serif" font-size="18px" fill="black">8</text> <text
		x="125" y="200" font-family="sans-serif" font-size="18px" fill="black">5</text>
	<text x="110" y="230" font-family="sans-serif" font-size="20px"
		fill="black">f</text> <text x="100" y="180" font-family="sans-serif"
		font-size="20px" fill="black">4</text> <text x="70" y="190"
		font-family="sans-serif" font-size="20px" fill="black">7</text> <line
		x1="150" y1="250" x2="150" y2="50" stroke="black" stroke-width="2" />
	<line x1="250" y1="150" x2="50" y2="150" stroke="black"
		stroke-width="2" /> <line x1="80" y1="80" x2="220" y2="220"
		stroke="black" stroke-width="2" /> <line x1="220" y1="80" x2="80"
		y2="220" stroke="black" stroke-width="2" /> </svg>
</div>
<div class="antiClockWiseId">
	<input type="image" src="<%=request.getContextPath()%>/images/cl1.png"
		alt="antiClockWiseId" width="48" height="48"
		onclick="rotateCircle('Anticlock')">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="image"
		src="<%=request.getContextPath()%>/images/cl2.png" alt="clockWiseId"
		width="48" height="48" border="none"
		onclick="rotateCircle('Clockwise')">
</div>
<div class="hr">
	<hr width="33%">
</div>
<div class="button">
	<input type="button" value="Inner Orbit" onclick="selectedValue('1')">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button"
		value="Outer Orbit" onclick="selectedValue('2')">
</div>
<form
	action="<%=request.getContextPath()%>/registrationServlet?flag=login"
	onsubmit="return assigningUserId()" method="post">
	<div class="password">

		<label for="pwd">Password:</label> <input type="password" id="pwd"
			name="pwd" placeholder="Password"> <input type="hidden"
			name="user_id" id="user_id"> <input type="hidden"
			name="user_name" id="hdn_name">
	</div>
	<div class="login">
		<input type="submit" value="Login">
	</div>
</form>
</body>
<script type="text/javascript">
	function assigningUserId() {
		document.getElementById("user_id").value = document
				.getElementById("uDataID").value;
		document.getElementById("hdn_name").value = document
				.getElementById("uDataName").value;
		return true;
	}
</script>
</html>