<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'answer.label', default: 'Answer')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
    <style>
        table {
            border-top: none;
            width: 90%;
            margin: 0 5% 0 5%;
            counter-reset: row-num;
            cursor: default;
            background: none;
        }



        table tr {
            counter-increment: row-num;
        }
        table tr td:first-child::before {
            content: "Answer " counter(row-num) ". ";
        }


        tr>td:first-child, tr>th:first-child {
            padding-left: 1em;
            margin: 20%;
        }
        tr>td:last-child, tr>th:last-child {
            padding-right: 20em;
        }

        td, th {
            border-bottom: 0.5px solid #4490c2;
            color: rgba(0, 0, 0, 0.66);
            line-height: 2em;
        }

        th:hover, tr:hover {
            background: transparent;
        }

        input#answer{
            width: 100%;
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



    <table class="showAnswer">

        <g:each var="possibleAnswers" in="${inPlace}">

            <tr><td></td><td>
            ${possibleAnswers.a}<br>

            </td></tr>

        </g:each>
    </table>



        <g:form action="save">
            <fieldset class="form">
                <div class="fieldcontain required">
                    <label for="a">Possible answer
                        <span class="required-indicator">*</span>
                    </label><input type="text" name="a" value="" required="" maxlength="50" id="answer">
                </div>
            </fieldset>
            <fieldset class="buttons">
                <input type="submit" name="create" class="save" value="+" id="create">

            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
