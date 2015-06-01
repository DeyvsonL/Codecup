<%@ page import="codecup.Email" %>



<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="email.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${emailInstance?.email}"/>

</div>

