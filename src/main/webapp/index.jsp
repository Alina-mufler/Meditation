<%--
  Created by IntelliJ IDEA.
  User: alino
  Date: 21.10.2020
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Meditation</title>
    <link rel="stylesheet" href="css/StartPage.css" type="text/css">
    <link rel="stylesheet" href="css/index.css" type="text/css">
</head>
<body>
<header>
    <div class="login">
        <c:if test="${pageContext.session.getAttribute('id') == null}">
            <button type="button" id="buttonLogin">
                <svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-person" fill="#FFF"
                     xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd"
                          d="M10 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"></path>
                </svg>
            </button>
        </c:if>
        <c:if test="${pageContext.session.getAttribute('id') != null}">
            <form action="${pageContext.request.contextPath}/profile" method="get">
                <button type="button" id="buttonProfile">
                    <svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-person" fill="#FFF"
                         xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M10 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"></path>
                    </svg>
                </button>
            </form>
        </c:if>

        <div id="loginForm" class="loginForm">
            <form class="signIn animate" action="${pageContext.request.contextPath}/login" method="post">

                <div class="container">
                    <%--@declare id="username"--%><%--@declare id="password"--%>
                    <%--@declare id="checkbox"--%><label>
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-fill"
                         fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                    </svg>
                    <input type="text" placeholder="Enter email" name="email"
                           pattern="^[a-zA-Z0-9\-_]+@[a-zA-Z0-9\-_]{2,63}[.](([a-zA-Z0-9\-_]{2,3}$)|([a-zA-Z0-9\-_]{2,63}[.][a-zA-Z0-9\-_]{2,3}$))"
                           required>
                </label>

                    <label>
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-key-fill" fill="currentColor"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path>
                        </svg>
                        <input type="password" placeholder="Password" name="password"
                               pattern="^(?=.*[0-9])(?=.*[a-z])[0-9a-zA-Z!@#$%^&*]{6,}$" required>

                    </label>


                    <input type="checkbox" class="checkbox" id="checkbox" checked="checked"/> <label for="checkbox">Remember
                    me</label>

                    <br>

                        <button type="submit" class="buttonLogin">Login</button>

                    <p>Нет аккаунта? &nbsp;&nbsp;
                    <form action="${pageContext.request.contextPath}/signUp">
                        <a href="#" id="aSignUp">Регистрация</a>
                        <span class="registration"></span>
                    </form>
                </div>
            </form>
        </div>

        <div id="signUpForm" class="signUpForm">
            <form class="signUp animate" action="${pageContext.request.contextPath}/signUp" method="post">

                <div class="container">

                    <%--@declare id="username"--%><%--@declare id="password"--%>
                    <%--@declare id="checkbox"--%>
                    <label for="name"><b>Name*</b>
                        <input type="text" name="name" id="name" placeholder="Enter name">
                    </label>
                    <label>
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-fill"
                             fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                        </svg>
                        <input type="text" placeholder="Enter email" name="email"
                               pattern="^[a-zA-Z0-9\-_]+@[a-zA-Z0-9\-_]{2,63}[.](([a-zA-Z0-9\-_]{2,3}$)|([a-zA-Z0-9\-_]{2,63}[.][a-zA-Z0-9\-_]{2,3}$))"
                               required>
                    </label>

                    <label>
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-key-fill"
                             fill="currentColor"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path>
                        </svg>
                        <input type="password" placeholder="Enter password" name="password"
                               pattern="^(?=.*[0-9])(?=.*[a-z])[0-9a-zA-Z!@#$%^&*]{6,}$" required>
                    </label>
                    <label>
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-key-fill"
                             fill="currentColor"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path>
                        </svg>
                        <input type="password" placeholder="Repeat password" name="passwordRepeat"
                               pattern="^(?=.*[0-9])(?=.*[a-z])[0-9a-zA-Z!@#$%^&*]{6,}$" required>
                    </label>

                    <button type="submit"  class="buttonLogin">SignUp</button>

                </div>
            </form>
        </div>
    </div>
    <script type="text/javascript" src="js/loginForm.js"></script>
    <div>
        <h1 id="heading">Помедитируем вместе?</h1>
    </div>
</header>
<div class="menu">
    <div class="post-item">
        <div class="item-content group">
            <div class="item-body">
                <h3>Немного о медитации</h3>
                <p>Тебе интересно что такое медитация и почему ты сейчас слышишь о ней от каждого второго? </p>
            </div>
            <div class="item-footer">
                <form action="${pageContext.request.contextPath}/aboutMeditation" method="get">
                    <a href="${pageContext.request.contextPath}/aboutMeditation" class="link"><span>Подробнее</span></a>
                </form>
            </div>
        </div>
    </div>
    <div class="post-item">
        <div class="item-content startMed">
            <div class="item-body">
                <h3>Как начать медитировать</h3>
                <p>Ты уже давно хочешь погрузиться в мир медитаций, но никак не можешь выделить время или побороть свою
                    лень?</p>
            </div>
            <div class="item-footer">
                <a href="${pageContext.request.contextPath}/beginMeditation" class="link"><span>Подробнее</span></a>
            </div>
        </div>
    </div>

    <div class="post-item">
        <div class="item-content formMed">
            <div class="item-body">
                <h3>Формы медитации</h3>
                <p>Хочешь немного узнать про все формы и методы медитации и обогатить свой словарный запас?</p>
            </div>
            <div class="item-footer">
                <a href="${pageContext.request.contextPath}/formMeditation" class="link"><span>Подробнее</span></a>
            </div>
        </div>
    </div>

    <c:if test="${pageContext.session.getAttribute('id') != null}">
        <div class="post-item">
            <div class="item-content rooms">
                <div class="item-body">
                    <h3>Комнаты медитации</h3>
                    <p>Хочешь просто помедитировать под расслабляющую музыку? Комнаты медитации созданы специально для
                        тебя</p>
                </div>
                <div class="item-footer">
                    <a href="${pageContext.request.contextPath}/meditationRoom" class="link"><span>Подробнее</span></a>
                </div>
            </div>
        </div>
    </c:if>

</div>
<footer>
    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}/about">Об авторе...</a></li>
            <li><a href="${pageContext.request.contextPath}/feedback">Связаться с автором!</a></li>
            <li><a href="${pageContext.request.contextPath}/sitemap">Карта сайта</a></li>
        </ul>
        <p><small>© 2020 The Mufler — <a href="${pageContext.request.contextPath}/tos">Условия обслуживания</a></small>
        </p>
    </nav>

</footer>
</body>
</html>
