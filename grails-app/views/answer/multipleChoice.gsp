<html>
<head>
    <meta name="layout" content="main">
    <title>multiple choice</title>
</head>

<body>
<div>
    Multiple choice
    <g:each var="answer" in="${answers}"></g:each>
    ${answers.a}
</div>

<div>
    Question
    <g:each var="question" in="${question}" ></g:each>
</div>

</body>
</html>