<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page pageEncoding="UTF-8" %>
		<c:import url="/includes/header.html" />
		<div id="holder">
			<h1>Thanks for joining our email list</h1>
			<h2>Here is the information that you entered:</h2>
			<label> Email:</label>
			<span> ${user.email} </span>
			<br>
			<label>First Name:</label>
			<span> ${user.firstName}</span>
			<br>
			<label> Last Name:</label>
			<span> ${user.lastName}</span>
			<br>

			<h2>This email address was added to our list on ${requestScope.currentDate}</h2>

			<p>The first address on our list is ${sessionScope.users[0].email}</p>
			<p>The second address on our list is ${sessionScope.users[1].email}</p>

			<h2>For customer service. Contact ${initParam.custServEmail}</h2>

			<p>To enter another email address, click on the Back
				button in your browser or the Return button shown
				below.</p>

			<form action="emailList" method="post">
				<input type="hidden" name="action" value="join">
				<input type="submit" value="Return">
			</form>
			<c:import url="/includes/footer.jsp" />