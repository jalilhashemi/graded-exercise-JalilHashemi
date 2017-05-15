<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>quizReport</title>
    <style>
    #quiz {
        color: white;
        width: 15em;
        height: 3em;
        margin: 3em 0em 0em 0em;
        font-size: 2em;
        background: #da7f2f;
    }

    #report {
        color: white;
        width: 15em;
        height: 3em;
        margin: 2em 0em 0em 0em;
        font-size: 2em;
        background: #da7f2f;
    }
    header {
        background-color: white;
        text-align: center;
        padding: 0.5em;
        font-size: 4em;
    }
    body{
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
    <form action="/answer/index">
        <input type="submit" id="report" value="REPORT" />
    </form>
</div>
</body>

</html>