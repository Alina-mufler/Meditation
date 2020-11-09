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
    <title>BeginMeditation</title>
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

    <h1 class="heading">Как начать медитировать</h1>

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
        <h2>С чего начать?)
        </h2>
        <p>
            Большинство из нас запрограммированы на работу и заботы, и этот режим трудно отключить. Но, как уже
            упоминалось, медитация способна вернуть власть над мыслями и чувствами, стимулируя процесс, называемый
            децентрацией. Например, при стрессовой ситуации, возникшей на работе, остановитесь на минутку, закройте
            глаза и скажите себе: «Да, я сейчас волнуюсь, но знаю, что, если я сделаю глубокий вдох и выдох, это
            пройдет. Это не то, что я не смогу преодолеть».
            <br>
            Начните практиковать полезный навык, внедряя его в повседневную жизнь. Вместо того, чтобы раздумывать, где
            взять дополнительное время, займитесь этим прямо сейчас.
            <br>
            «20 минут с закрытыми глазами в тихой темной комнате — это, конечно, идеальный вариант, так сказать, золотой
            стандарт, — говорит Педрам Шоджай. — Но уделить медитации всего несколько минут непосредственно там, где вы
            находитесь, — отличное начало. Выстраивайте привычку шаг за шагом, используя удобные моменты.
        </p>
        <h2>Не злитесь, что застряли в очереди, а примите это как возможность помедитировать, вместо того, чтобы, как
            обычно, увязнуть в смартфоне.</h2>
        <p>
            Сфокусируйтесь на дыхании в спортзале, осознавайте себя в процессе каждого приседания или наклона. Устройте
            пятиминутную практику, когда вы идете, едете в электричке или застряли в пробке».
            <br>
            Тем не менее, Шоджай признает, что поначалу полезно хорошенько погрузиться в процесс, чтобы понять, как
            работает ваше сознание. «Это похоже на начало отношений, — считает он. — Когда вы только знакомитесь с
            кем-то, ходите на свидания, вы проводите много времени за разговорами, узнавая друг друга. Позже, по мере
            развития романа, вы сможете понимать друг друга с полуслова и тратить меньше времени на достижение
            результатов — так же как достигая осознанности, стоя в очереди или отдыхая в рабочий перерыв».
            <br>
            Кому-то удобнее медитировать, едва проснувшись, другим привычнее напоминания в телефоне в течение дня. И
            если со временем вы планируете отвести практике 15-20 минут в день, вы должны определить конкретное время в
            расписании, иначе это так и не станет привычкой.
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

