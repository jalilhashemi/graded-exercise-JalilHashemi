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