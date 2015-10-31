<%@ page import="fmp.LocationType" %>



<div class="fieldcontain ${hasErrors(bean: locationTypeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="locationType.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${locationTypeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locationTypeInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="locationType.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="255" required="" value="${locationTypeInstance?.description}"/>

</div>

