<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main" />
    <meta charset="UTF-8"/>
    <title>home</title>
    <style>

        /*header {*/
            /*background-color: white;*/
            /*text-align: center;*/
            /*padding: 0.5em;*/
            /*font-size: 4em;*/
        /*}*/
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
    <header>Welcome to Socrative</header>
    <div id="form">
            <form action="/quizReport/index">
                <input type="submit" id="teacher" value="TEACHER" />
            </form>
            <form action="/multipleChoice/answering">
                <input type="submit" id="student" value="STUDENT" />
            </form>
    </div>
</body>

</html>