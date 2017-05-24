<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main" />
    <meta charset="UTF-8"/>
    <title>multipleChoice</title>
</head>
<body class="answering">
    <header>Multiple choice</header>
    <g:form action="create" class="answering">
        <div>
            <h1 class="answering">${questionView}</h1>
        </div>
        <g:each var="possibleAnswers" in="${multipleChoice}">
            <label class="answering"><input type="radio" name="answer${possibleAnswers.id}"/>${possibleAnswers.a}</label><br>
        </g:each>
        <input id="last" type="submit" value="Submit">
    </g:form>
</body>
</html>