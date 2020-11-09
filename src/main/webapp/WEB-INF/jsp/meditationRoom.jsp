<%--
  Created by IntelliJ IDEA.
  User: Bulat
  Date: 11/8/2020
  Time: 10:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="css/infoMeditation.css" type="text/css">
<link rel="stylesheet" href="css/index.css" type="text/css">
<html>
<head>
    <title>Meditation Room</title>
</head>
<body>
<header>
    <button type="submit" id="backButton">
        <svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-arrow-left-circle-fill" fill="#FFF"
             xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
                  d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5.5a.5.5 0 0 0 0-1H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5z"></path>
        </svg>
    </button>
    <div>
        <h1 class="heading">Музыка для медитации</h1>
    </div>
</header>
<div class="login">

    <button type="button" id="buttonLogin">
        <svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-person" fill="#FFF"
             xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
                  d="M10 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"></path>
        </svg>
    </button>
</div>
<script src="${pageContext.request.contextPath}/js/loginForm.js"></script>

    <c:if test="${pageContext.session.getAttribute('id') != null}">
        <main id="music" style="display: flex; justify-content: center; flex-direction: column;">

        </main>
    </c:if>

<script src="${pageContext.request.contextPath}/js/music.js"></script>

<footer>
    <nav>
        <ul>
            <li><a href="/about">Об авторе...</a></li>
            <li><a href="/feedback">Связаться с автором!</a></li>
            <li><a href="/sitemap">Карта сайта</a></li>
        </ul>
        <p><small>© 2020 The Mufler — <a href="/tos">Условия обслуживания</a></small></p>
    </nav>

</footer>
</body>
</html>
