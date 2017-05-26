<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main" />
    <meta charset="UTF-8"/>
    <title>home</title>
</head>
<body>
    <header>Welcome to Socrative</header>
    <div class="home">
        <form action="/quizReport/index">
            <input type="submit" id="teacher" value="TEACHER" />
        </form>

        <g:if test="${hasQuestions}">

            <form action="/multipleChoice/answering">
                <input type="submit" id="student" value="STUDENT" />
            </form>

        </g:if>


    </div>
</body>
</html>