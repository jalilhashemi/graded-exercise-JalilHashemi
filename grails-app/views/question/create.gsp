<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <style>
    </style>
    <body>
        <a href="#create-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

    <div id="create-question" class="content scaffold-create" role="main">
        <h1>Create Question</h1>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="/">Home</a></li>
                <li><a href="/question/index" class="list">Question List</a></li>
            </ul>
        </div>
        <form action="/question/save" method="post">
            <fieldset class="form">
                <div class="fieldcontain required">
                    <label for="questionerName">Questioner Name
                        <span class="required-indicator">*</span>
                    </label><br>
                    <input type="text" name="questionerName" value="" required="" maxlength="50" id="questionerName">
                </div><div class="fieldcontain required">
                <label for="question">Question
                    <span class="required-indicator">*</span>
                </label><br>
                <textarea name="question"  required="" maxlength="500" id="question">Please write your question here</textarea>
            </div>
            </fieldset>
            <fieldset class="buttons">
                <input type="submit" name="create" class="save" value="Create" id="create">
            </fieldset>
        </form>
    </div>
    </body>
</html>
