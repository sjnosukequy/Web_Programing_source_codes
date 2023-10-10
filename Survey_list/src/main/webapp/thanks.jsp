<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!DOCTYPE html>
	<html lang="en-US">
	<html>

	<head>
		<meta charset="UTF-8">
		<title> Murach's Java and JSP</title>
		<link rel="stylesheet" href="styles/main2.css" type="text/css" />
	</head>

	<body>
		<div id="Survey_id">
			<div class="survey">
				<h1>Thanks for joining our Survey</h1>
				<p>Here is the information that you entered:</p>
				<label> Email:</label>
				<span> ${user.email} </span>
				<br>

				<label>First Name:</label>
				<span> ${user.firstName}</span>
				<br>

				<label> Last Name:</label>
				<span> ${user.lastName}</span>
				<br>

				<label> Day of birth:</label>
				<span> ${user.dob}</span>
				<br>

				<label> You've known us by:</label>
				<span> ${user.heard}</span>
				<br>

				<c:if test="${news}">
					<label> Contact by:</label>
					<span> ${user.con}</span>
				</c:if>

				<p>To enter another email address, press the Back button in your browser or the
					Return button shown below.</p>
				<form action="emailList" method="post">
					<input type="hidden" name="action" value="join">
					<input type="submit" value="Return">
				</form>
			</div>
		</div>
		<c:import url="/includes/footer.jsp" />
	</body>

	</html>