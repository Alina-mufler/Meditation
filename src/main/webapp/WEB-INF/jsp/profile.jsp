<%--
  Created by IntelliJ IDEA.
  User: Bulat
  Date: 11/8/2020
  Time: 11:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/profile.css">
<html>
<head>
    <title>Profile</title>
</head>
<body>
<header>
    <div>
        <h1 class="heading">Я - медитация</h1>
    </div>
</header>
<div class="menu">
    <div class="profile">
        <div class="avatar">

        </div>
        <div class="info">
            <p>Имя: ${pageContext.request.session.getAttribute('userName')}</p>
            <p>Email: ${pageContext.request.session.getAttribute('email')}</p>
        </div>
        <div class="music">
            <h2>Моя музыка</h2>
        </div>
    </div>
</div>
<main id="music" style="display: flex; justify-content: center; flex-direction: column;">

</main>
<script src="${pageContext.request.contextPath}/js/profile.js"></script>
</body>
</html>
