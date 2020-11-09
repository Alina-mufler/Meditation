<%--
  Created by IntelliJ IDEA.
  User: alino
  Date: 28.10.2020
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>InfoMeditation</title>
    <link rel="stylesheet" href="css/infoMeditation.css" type="text/css">
    <link rel="stylesheet" href="css/index.css" type="text/css">
</head>
<body>
<header>
    <button type="submit" id="backButton">
        <svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-arrow-left-circle-fill" fill="#FFF" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5.5a.5.5 0 0 0 0-1H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5z"></path>
        </svg>
    </button>

    <h1 class="heading">Немного о медитации</h1>

</header>
<div class="login">

    <button type="button" id="buttonLogin">
        <svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-person" fill="#FFF"
             xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
                  d="M10 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"></path>
        </svg>
    </button>

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

                <button type="submit" class="buttonLogin">SignUp</button>

            </div>
        </form>
    </div>
</div>
<script type="text/javascript" src="js/loginForm.js"></script>
<div class="menu">
    <div class="aboutMeditation">
        <h2>Медитация
        </h2>
        <p>
            Медитация — ряд психических упражнений, используемых в составе духовно-религиозной или оздоровительной
            практики, или же особое психическое состояние, возникающее в результате этих упражнений (или в силу иных
            причин). Медитация может рассматриваться как вид созерцания.
            <br>

            Занимаясь медитацией, не надо делать над собой никаких усилий, нужно полностью расслабиться. Медитация — это
            состояние расслабленной сосредоточенности, в котором идет отрешенное наблюдение за происходящим.
            <br>
            Медитация означает, что мы чему-то предоставляем место, позволяем этому развиваться, наблюдаем, воспринимаем
            во всей полноте. Занимающийся медитацией ничего не должен оценивать, предоставив свободу мыслям, чувствам и
            протекающим в организме процессам.
            <img src="additional/med.jpg" class="med">
        </p>
        <h2>Подготовка к медитации</h2>
        <p>
            Приступать к погружению в свой внутренний мир необходимо, полностью отключившись от текущих проблем. Прежде
            чем заняться медитацией, рекомендуем оставить позади вопросы, связанные с работой, учебой, сложностями в
            отношениях и так далее. Все, что должно быть важно в данный миг – это возможность расслабиться, получить
            просветление, добиться единства и гармонии тела, души, разума. Стать единым целым с миром Просветления,
            который приведет ваш заблудший Разум к источнику мудрости, понимания бытия.
            <br>
            Необходимо абстрагироваться от всего. Лучшим вариантом станет воспроизведение спокойной, релаксирующей
            музыки, которая поможет расслабиться, отбросить все тяготы и заботы, которые накопились в течение рабочей
            недели. Приглушенный, неяркий свет, приятные благовония также станут замечательными помощниками для
            получения просветления.
        </p>
    </div>
</div>

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
