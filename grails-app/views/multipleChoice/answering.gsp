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
                width: 60%;
                margin-left: 20%;
                margin-right: 20%;
            }
            label:hover {
                background: #ff9737;
            }
            label:focus {
                background: red;
            }
            label {
                background: #4490c2;
                display: table;
                padding: 10px;
                width:100%;
                border-radius: 0.3em;
            }
            input[type=radio]
            {
                margin-right: 5px;
                margin-bottom: 3px;

            }
            h1 {
                margin: 2em 0em 2em 0em;
                font-size: 2em;
                text-align: center;


            }
            #last {
                background-color: transparent;
                border: 0;
                color: #666666;
                cursor: pointer;

                display: inline-block;
                margin: 1em 0em 0em;
                overflow: visible;
                padding: 0.25em 0.7em;
                text-decoration: none;

                -moz-border-radius: 0.3em;
                -webkit-border-radius: 0.3em;
                border-radius: 0.3em;
            }
            #last:hover {
                background-color: #ff9737;
                color: #ffffff;
                outline: none;
                text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.8);
                -moz-box-shadow: none;
                -webkit-box-shadow: none;
                box-shadow: none;
            }
        </style>
    </head>

    <body>
    <header>Multiple choice</header>
    <g:form action="create">
    %{--<g:form action="count">--}%
        <div>
            <h1>${questionView}</h1>
        </div>
            <g:each var="possibleAnswers" in="${multipleChoice}">
                <label><input type="radio" name="answer${possibleAnswers.id}"/>${possibleAnswers.a}</label><br>
            </g:each>
        <input id="last" type="submit" value="Submit">

    </g:form>

    </body>
</html>