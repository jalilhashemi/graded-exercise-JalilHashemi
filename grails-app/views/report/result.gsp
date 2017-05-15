<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>result</title>
    <style>
    header {
        background-color: white;
        text-align: center;
        padding: 0.5em;
        font-size: 4em;
    }
    body {
        margin: 0%;
        background: #8bbed9;
    }
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