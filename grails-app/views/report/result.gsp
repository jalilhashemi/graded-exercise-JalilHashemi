<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main" />
    <meta charset="UTF-8"/>
    <title>result</title>
    <style>
    body {
        background: #8bbed9;
    }


    form {
        font-size: 1.5em;
        width: 60%;
        margin-left: 20%;
        margin-right: 20%;
        margin-top: 3em;
    }


    label {
        background: #4490c2;
        display: table;
        padding: 10px;
        width:100%;
        border-radius: 0.3em;

    }

        .mybar{
            background-color: #ff9737;
        }
    </style>
</head>

<body>

<header>Report</header>
<form>
    <g:set var="counter" value="${0}"/>
    <g:each var="report" in="${showResult}">
        <g:set var="counter" value="${counter + report.counter.toInteger()}"/>
    </g:each>


    <g:each var="report" in="${showResult}">
        <label>${report.a}</label><br>

        <div class="progress">
            <div class="progress-bar mybar" role="progressbar" style="width:${100/counter * report.counter}%">
                ${report.counter}
            </div>
        </div>


        </div>
    </g:each>




</form>

</body>
</html>