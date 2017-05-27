<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main" />
    <meta charset="UTF-8"/>
    <title>preview</title>
</head>
<body class="answering">
<header>Preview</header>
<form action="/home" class="answering">
    <div>
        <h1 class="answering">${questionPreview}</h1>
    </div>
    <g:each var="answers" in="${multipleChoicePreview}">
        <label class="answeringPreview">
            <input type="checkbox">${answers.a}
        </label><br>
    </g:each>
    <a href="/answer/create" id="last">Back</a>
    <input id="last" type="submit" value="Finish">
</form>
</body>
</html>