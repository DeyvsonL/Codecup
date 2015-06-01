<%@ page import="codecup.Politico" %>



<div class="fieldcontain ${hasErrors(bean: politicoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="politico.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${politicoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: politicoInstance, field: 'obras', 'error')} ">
	<label for="obras">
		<g:message code="politico.obras.label" default="Obras" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${politicoInstance?.obras?}" var="o">
    <li><g:link controller="obra" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="obra" action="create" params="['politico.id': politicoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'obra.label', default: 'Obra')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: politicoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="politico.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${politicoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: politicoInstance, field: 'fotoUrl', 'error')} required">
	<label for="fotoUrl">
		<g:message code="politico.fotoUrl.label" default="Foto Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fotoUrl" required="" value="${politicoInstance?.fotoUrl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: politicoInstance, field: 'qualidade', 'error')} required">
	<label for="qualidade">
		<g:message code="politico.qualidade.label" default="Qualidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qualidade" value="${fieldValue(bean: politicoInstance, field: 'qualidade')}" required=""/>

</div>

