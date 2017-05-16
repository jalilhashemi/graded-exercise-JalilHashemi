<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>home</title>
    <style>
        #teacher {
            color: white;
            width: 15em;
            height: 3em;
            margin: 3em 0em 0em 0em;
            font-size: 2em;
            background: #da7f2f;
        }
        #teacher:hover {
            background: border-box;
        }

        #student {
            color: white;
            width: 15em;
            height: 3em;
            margin: 2em 0em 0em 0em;
            font-size: 2em;
            background: #4490c2;
        }
        #student:hover {
            background: border-box;
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