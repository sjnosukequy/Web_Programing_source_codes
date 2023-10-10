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
      <h1>Cookies</h1>

      <p>Here's a table with all of the cookies that this
        browser is sending to the current server.</p>

      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <table>
          <tr>
            <th>Name</th>
            <th>Value</th>
          </tr>
          <c:forEach var="c" items="${cookie}">
            <tr>
              <td>
                <c:out value='${c.value.name}' />
              </td>
              <td>
                <c:out value='${c.value.value}' />
              </td>
            </tr>
          </c:forEach>
        </table>
        <br>
        <a class="BUTT" href="download?action=viewAlbums">View list of albums</a>

        <a class="BUTT" href="download?action=deleteCookies">Delete all persistent cookies</a>
    </div>
  </div>
  <a href="/"> <button class="Back_BUTT"> Back to home website </button> </a>
</body>

</html>