<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main" />
    <meta charset="UTF-8"/>
    <title>result</title>
    <style>
    body {
        margin: 0%;
        background: #8bbed9;
    }

    html, body {height:100%;}
    html {display:table; margin: auto}
    body {display:table-cell; text-align:center; vertical-align:middle;}


    form {
        font-size: 2em;
        margin: 2em;
        line-height: 0.5em;
    }
    label {
        background: #4490c2;
        display: table;
        padding: 15px;
        width:800px;
    }
    </style>
</head>

<body>

<header>Report</header>
<form>
    <g:each var="report" in="${showResult}">
        <label>${report.a}</label><br>
    </g:each>
</form>

</body>
</html>