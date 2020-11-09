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
    <title>FormMeditation</title>
    <link rel="stylesheet" href="css/infoMeditation.css" type="text/css">
    <link rel="stylesheet" href="css/index.css" type="text/css">
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

    <h1 class="heading">Формы медитации</h1>

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
        <h2>ДЗЕН МЕДИТАЦИЯ (ДЗАДЗЭН)
        </h2>
        <p>
            Как правило, техника практикуется сидя со скрещенными ногами на коврике или подушке. Традиционно это поза
            лотоса или полу-лотоса. Сейчас, большинство практикующих медитируют просто сидя на стуле.
            <br>
            Наиболее важный аспект — сохранять ровное положение спины от таза до шеи. Рот закрыт, глаза опущены.
            <br>
            Как аспект ума, это обычно практикуется двумя способами:
            <br>
            Концентрация на дыхании — сосредоточить внимание на движении дыхания, как оно входит и выходит через нос.
            Этому может помочь подсчет дыхания в уме. Каждый раз, когда вы вдыхаете отнимайте единичку, начиная с 10, и
            двигайтесь назад до 9, 8, 7, и т.д. Когда вы дойдете до 1, возобновите счет от 10. Если вы отвлеклись и
            потеряли свой отсчет, мягко верните внимание к 10 и начните снова.
            <br>
            “Просто сидение” — в этой форме практикующий не пользуется каким-либо объектом для внимания; он старается
            как можно дольше оставаться в настоящем моменте, осознавая и наблюдая, что проходит через его сознание и что
            происходит вокруг, не останавливаясь на чем-то конкретном.
        </p>
        <h2>МЕДИТАЦИЯ ВИПАССАНА</h2>
        <p>
            Медитация осознанности — это адаптация буддийских практик, особенно Випассаны, но также на нее повлияли и
            другие течения (вьетнамский Дзэн-Буддизм тик Нат Хан). “Осознанность” — это распространенный на Западе
            перевод буддийского термина Сати. Анапанасати, “осознанное дыхание”, является частью Випассаны и других
            буддийских медитативных практик, например, дзадзэн (источник: Википедия).
            <br>
            Джон Кабат-Зинн — один из главных западных авторитетов а области осознанности. В 1979 г. в университете
            штата Массачусет на основе осознанности он разработал программу для снятия стресса (MBSR), которая
            используется во многих больницах и поликлиниках на протяжении последних десятилетий.

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
