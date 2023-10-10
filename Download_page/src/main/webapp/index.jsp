<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>

<body>
    <div id="container">
        <h1>List of albums</h1>

        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:if test="${cookie.firstNameCookie.value != null}">
                <p>Welcome back,
                    <c:out value='${cookie.firstNameCookie.value}' />
                </p>
            </c:if>

            <div id="cd_lists">
                <a href="download?action=checkUser&amp;productCode=8601">
                    <img src="./imgs/1.jpg">
                    <p>86 (the band) - True Life Songs and Pictures</p>
                </a>

                <a href="download?action=checkUser&amp;productCode=pf01">
                    <img src="./imgs/2.jpg">
                    <p>Paddlefoot - The First CD</p>
                </a>

                <a href="download?action=checkUser&amp;productCode=pf02">
                    <img src="./imgs/3.jpg">
                    <p>Paddlefoot - The Second CD</p>
                </a>

                <a href="download?action=checkUser&amp;productCode=jr01">
                    <img src="./imgs/4.jpg">
                    <p>Joe Rut - Genuine Wood Grained Finish</p>
                </a>
            </div>
            </p>
    </div>
    <a href="/"> <button class="Back_BUTT"> Back to home website </button> </a>
</body>

</html>