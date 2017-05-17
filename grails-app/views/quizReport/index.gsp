<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main" />
    <meta charset="UTF-8"/>
    <title>quizReport</title>
    <style>


        body {
            margin: 0%;
            background: #8bbed9;
        }
        div#form{
            padding: 0em 0em 2em 0em;
            text-align: center;
        }
    </style>
</head>

<body>
<header>Quiz OR Report</header>
<div id="form">
    <form action="/question/create">
        <input type="submit" id="quiz" value="QUIZ" />
    </form>
    <form action="/report/result">
        <input type="submit" id="report" value="REPORT" />
    </form>
</div>
</body>

</html>