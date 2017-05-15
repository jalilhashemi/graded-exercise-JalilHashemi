<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title>multipleChoice</title>
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
            label:hover {
                background: #da7f2f;
            }
            label {
                background: #4490c2;
                display: table;
                padding: 5px;

                padding-left:5px;
                width:800px;
            }
            input[type=checkbox]
            {
                zoom: 2;
            }
            h1 {
                margin: 2em;
            }
        </style>
    </head>

    <body>

        <header>Multiple choice</header>
        <div>
            <h1>${questionView}</h1>
        </div>
        <form>
            <g:each var="possibleAnswers" in="${multipleChoice}">
                <label><input type="checkbox"/>${possibleAnswers.a}</label><br>
            </g:each>
        </form>

    </body>
</html>