<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>

<body>
    <div id="container">
        <div id="content">
            <h1>Download registration</h1>

            <p>To register for our downloads, enter your name and email
                address below. Then, click on the Submit button.</p>

            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <form action="download" method="post">
                    <input type="hidden" name="action" value="registerUser">
                    <label class="pad_top">Email:</label>
                    <input type="email" class="text_box" name="email" value="<c:out value='${user.email}'/>"><br>
                    <label class="pad_top">First Name:</label>
                    <input type="text" class="text_box" name="firstName" value="<c:out value='${user.firstName}'/>"><br>
                    <label class="pad_top">Last Name:</label>
                    <input type="text" class="text_box" name="lastName" value="<c:out value='${user.lastName}'/>"><br>
                    <label>&nbsp;</label>
                    <input type="submit" value="Register" class="BUTT">
                </form>
        </div>
    </div>
    <a href="/"> <button class="Back_BUTT"> Back to home website </button> </a>
</body>

</html>