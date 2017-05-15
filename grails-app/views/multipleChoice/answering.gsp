<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>multipleChoice</title>
</head>

<body>
<div>
    Open bookings for
    <g:each var="possibleAnswers" in="${multipleChoice}">
        ${possibleAnswers.id}" ${possibleAnswers.a}
    </g:each>
</div>


</body>
</html>