<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
<style>
table tr {
    counter-increment: row-num;
}
table tr td:first-child::before {
    content: "Question " counter(row-num) ". ";
}
</style>
</head>
<body>
    <a href="#index-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div id="index-question" class="content scaffold-create" role="main">
        <h1>Question List</h1>
        <a href="#list-question" class="skip" tabindex="-1">Skip to content…</a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="/">Home</a></li>
                <li><a href="/question/create" class="create">New Question</a></li>
            </ul>
        </div>
        <div id="centered">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${questionList}" />
            <g:paginate total="${questionCount ?: 0}" />
        </div>
    </div>
</body>
</html>