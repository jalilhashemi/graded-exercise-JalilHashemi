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


    form {
        width: 100%;
        margin-left: auto;
        margin-right: auto;
        margin-top: 3em;
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