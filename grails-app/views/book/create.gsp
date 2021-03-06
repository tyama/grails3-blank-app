<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
    <ul class="nav nav-pills">
        <li><a class="home" href="${createLink(uri: '/')}"><i class="fa fa-home"></i> <g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><i class="fa fa-th-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ul>
    <div id="create-book" class="content scaffold-create" role="main">
        <h2><g:message code="default.create.label" args="[entityName]" /></h2>
        <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${book}">
        <ul class="errors" role="alert">
            <g:eachError bean="${book}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
        </g:hasErrors>
        <g:form action="save" class="form-horizontal">
            %{--<fieldset class="form">--}%
                <f:all bean="book"/>
            %{--</fieldset>--}%
            <div class="form-actions well-small">
                <button name="create" class="save btn btn-primary" type="submit">
                    <i class="fa fa-check-circle"></i> ${message(code: 'default.button.create.label', default: 'Create')}
                </button>
            </div>
        </g:form>
    </div>
</body>
</html>
