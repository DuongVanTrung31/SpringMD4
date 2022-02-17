<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17/02/2022
  Time: 3:37 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
</head>
<body>
<form action="${pageContext.request.contextPath}/transform" method="post">
  <h1>Chuyển đổi tiền tệ</h1>
    <label for="usd">
        USD:
    </label>
    <input type="text" name="usd" id="usd"/>
    <br>
    <label for="rate">
        Rate:
    </label>
    <input type="text" name="rate" id="rate" value="23000"/>
    <button type="submit">Chuyển đổi</button>
</form>
<h1>Result: ${result} VND</h1>
</body>
</html>
