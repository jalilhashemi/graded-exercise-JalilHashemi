<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'answer.label', default: 'Answer')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
    <style>
        input#answer {
            width: 100%;
        }
        label {
            display: table;
            padding-bottom: 10px;
        }
    </style>
</head>
<body>
    <a href="#create-answer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div id="create-answer" class="content scaffold-create" role="main">
        <h1>Create Answer</h1>
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        </ul>
    </div>
    <div id="centered">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${this.answer}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.answer}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form action="save">
            <fieldset class="form">
                <div class="fieldcontain required">
                    <label for="a">Possible answer
                        <span class="required-indicator">*</span>
                    </label><input type="text" name="a" value="" required="" maxlength="50" id="answer">
                </div>
            </fieldset>
            <fieldset class="buttons">
                <input type="submit" name="create" class="save" value="Finish" id="create">
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
