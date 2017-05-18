<!doctype html>
<html lang="en">
    <head>
        <meta name="layout" content="main" />
        <meta charset="UTF-8"/>
        <title>multipleChoice</title>
        <style>
            body {
                background: #8bbed9;
            }
            form {
                font-size: 1.5em;
                margin: 2em;
                line-height: 0.5em;
                width: 40em;
                margin-left: auto;
                margin-right: auto;
            }
            label:hover {
                background: #ff9737;
            }
            label {
                background: #4490c2;
                display: table;
                padding: 10px;
                width:800px;
                align-content: center;
                border-radius: 0.3em;
            }
            input[type=checkbox]
            {
                zoom: 2;
                margin-right: 5px;
                margin-bottom: 3px;

            }
            h1 {
                margin: 2em;
                font-size: 2em;
            }
        </style>
    </head>

    <body>
    <header>Multiple choice</header>
    <g:form action="submit">
        <div>
            <h1>${questionView}</h1>
        </div>

            <g:each var="possibleAnswers" in="${multipleChoice}">
                <label><input type="checkbox"/>${possibleAnswers.a}</label><br>
            </g:each>
        <input type="submit" value="Submit">

    </g:form>

    </body>
</html>