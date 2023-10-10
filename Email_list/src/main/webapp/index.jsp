<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
    <c:import url="/includes/header.html" />
    <div id="holder">
    <h1> Join our email list </h1>
    <p>To join our email list, enter your name and
        email address below.</p>
    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">

        <input type="email" name="email" placeholder="Email" value="${user.email}">
        <input type="text" name="firstName" placeholder="First Name" value="${user.firstName}">
        <input type="text" name="lastName" placeholder="Last Name" value="${user.lastName}">
        
        <p><i> ${message} </i></p>
        <input type="submit" value="Join Now" id="submit">
    </form>
    <c:import url="/includes/footer.jsp" />