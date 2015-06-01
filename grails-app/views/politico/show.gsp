
<%@ page import="codecup.Politico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'politico.label', default: 'Politico')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-politico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-politico" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list politico">
			
				<g:if test="${politicoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="politico.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${politicoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${politicoInstance?.obras}">
				<li class="fieldcontain">
					<span id="obras-label" class="property-label"><g:message code="politico.obras.label" default="Obras" /></span>
					
						<g:each in="${politicoInstance.obras}" var="o">
						<span class="property-value" aria-labelledby="obras-label"><g:link controller="obra" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${politicoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="politico.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${politicoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${politicoInstance?.fotoUrl}">
				<li class="fieldcontain">
					<span id="fotoUrl-label" class="property-label"><g:message code="politico.fotoUrl.label" default="Foto Url" /></span>
					
						<span class="property-value" aria-labelledby="fotoUrl-label"><g:fieldValue bean="${politicoInstance}" field="fotoUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${politicoInstance?.qualidade}">
				<li class="fieldcontain">
					<span id="qualidade-label" class="property-label"><g:message code="politico.qualidade.label" default="Qualidade" /></span>
					
						<span class="property-value" aria-labelledby="qualidade-label"><g:fieldValue bean="${politicoInstance}" field="qualidade"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:politicoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${politicoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
