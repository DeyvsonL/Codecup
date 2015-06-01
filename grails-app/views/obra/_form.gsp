<%@ page import="codecup.Obra" %>



<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="obra.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${obraInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'precoPlanejado', 'error')} required">
	<label for="precoPlanejado">
		<g:message code="obra.precoPlanejado.label" default="Preco Planejado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precoPlanejado" value="${fieldValue(bean: obraInstance, field: 'precoPlanejado')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'dataPlanejada', 'error')} required">
	<label for="dataPlanejada">
		<g:message code="obra.dataPlanejada.label" default="Data Planejada" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataPlanejada" precision="day"  value="${obraInstance?.dataPlanejada}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'dataTermino', 'error')} required">
	<label for="dataTermino">
		<g:message code="obra.dataTermino.label" default="Data Termino" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataTermino" precision="day"  value="${obraInstance?.dataTermino}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="obra.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${obraInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="obra.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="empresa" required="" value="${obraInstance?.empresa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'engenheiro', 'error')} required">
	<label for="engenheiro">
		<g:message code="obra.engenheiro.label" default="Engenheiro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="engenheiro" required="" value="${obraInstance?.engenheiro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'fotoUrl', 'error')} required">
	<label for="fotoUrl">
		<g:message code="obra.fotoUrl.label" default="Foto Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fotoUrl" required="" value="${obraInstance?.fotoUrl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="obra.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitude" value="${fieldValue(bean: obraInstance, field: 'latitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="obra.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitude" value="${fieldValue(bean: obraInstance, field: 'longitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'politico', 'error')} required">
	<label for="politico">
		<g:message code="obra.politico.label" default="Politico" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="politico" name="politico.id" from="${codecup.Politico.list()}" optionKey="id" required="" value="${obraInstance?.politico?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'precoFinal', 'error')} required">
	<label for="precoFinal">
		<g:message code="obra.precoFinal.label" default="Preco Final" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precoFinal" value="${fieldValue(bean: obraInstance, field: 'precoFinal')}" required=""/>

</div>

