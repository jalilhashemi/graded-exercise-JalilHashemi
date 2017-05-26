<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main" />
    <meta charset="UTF-8"/>
    <title>quizReport</title>
</head>
<body class="quezReport">
    <header>Quiz OR Report</header>
    <div class="quezReport">
        <form action="/question/create">
            <input type="submit" id="quiz" value="QUIZ" />
        </form>

        <form action="/report/result">
        <g:if test="${counterZero}">
            <input type="submit" id="report" value="REPORT" />
        </g:if>
            <g:else>
                <input type="submit" id="reportDisabled" value="REPORT" disabled="disabled"/>
            </g:else>
        </form>

    </div>
</body>
</html>
