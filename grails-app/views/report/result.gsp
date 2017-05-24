<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main" />
    <meta charset="UTF-8"/>
    <title>result</title>
</head>
<body class="result">
    <header>Report</header>
    <form class="result">
        <g:set var="counter" value="${0}"/>
        <g:each var="report" in="${showResult}">
            <g:set var="counter" value="${counter + report.counter.toInteger()}"/>
        </g:each>
        <g:each var="report" in="${showResult}">
            <label class="result">${report.a}</label><br>
            <div class="progress">
                <div class="progress-bar mybar" role="progressbar" style="width:${100/counter * report.counter}%">
                    ${report.counter}
                </div>
            </div>
        </g:each>
    </form>
</body>
</html>