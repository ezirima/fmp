<%@ page import="fmp.Country" %>



<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'countryName', 'error')} ">
	<label for="countryName">
		<g:message code="country.countryName.label" default="Country Name" />
		
	</label>
	<g:textField name="countryName" value="${countryInstance?.countryName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'ISO3', 'error')} ">
	<label for="ISO3">
		<g:message code="country.ISO3.label" default="ISO 3" />
		
	</label>
	<g:textField name="ISO3" value="${countryInstance?.ISO3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'ISO', 'error')} ">
	<label for="ISO">
		<g:message code="country.ISO.label" default="ISO" />
		
	</label>
	<g:textField name="ISO" value="${countryInstance?.ISO}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'ISONumeric', 'error')} required">
	<label for="ISONumeric">
		<g:message code="country.ISONumeric.label" default="ISON umeric" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ISONumeric" type="number" value="${countryInstance.ISONumeric}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'FIPS', 'error')} ">
	<label for="FIPS">
		<g:message code="country.FIPS.label" default="FIPS" />
		
	</label>
	<g:textField name="FIPS" value="${countryInstance?.FIPS}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'capital', 'error')} ">
	<label for="capital">
		<g:message code="country.capital.label" default="Capital" />
		
	</label>
	<g:textField name="capital" value="${countryInstance?.capital}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'continent', 'error')} ">
	<label for="continent">
		<g:message code="country.continent.label" default="Continent" />
		
	</label>
	<g:textField name="continent" value="${countryInstance?.continent}"/>

</div>

