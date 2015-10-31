
<%@ page import="fmp.Country" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'country.label', default: 'Country')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-country" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-country" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list country">
			
				<g:if test="${countryInstance?.countryName}">
				<li class="fieldcontain">
					<span id="countryName-label" class="property-label"><g:message code="country.countryName.label" default="Country Name" /></span>
					
						<span class="property-value" aria-labelledby="countryName-label"><g:fieldValue bean="${countryInstance}" field="countryName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${countryInstance?.ISO3}">
				<li class="fieldcontain">
					<span id="ISO3-label" class="property-label"><g:message code="country.ISO3.label" default="ISO 3" /></span>
					
						<span class="property-value" aria-labelledby="ISO3-label"><g:fieldValue bean="${countryInstance}" field="ISO3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${countryInstance?.ISO}">
				<li class="fieldcontain">
					<span id="ISO-label" class="property-label"><g:message code="country.ISO.label" default="ISO" /></span>
					
						<span class="property-value" aria-labelledby="ISO-label"><g:fieldValue bean="${countryInstance}" field="ISO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${countryInstance?.ISONumeric}">
				<li class="fieldcontain">
					<span id="ISONumeric-label" class="property-label"><g:message code="country.ISONumeric.label" default="ISON umeric" /></span>
					
						<span class="property-value" aria-labelledby="ISONumeric-label"><g:fieldValue bean="${countryInstance}" field="ISONumeric"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${countryInstance?.FIPS}">
				<li class="fieldcontain">
					<span id="FIPS-label" class="property-label"><g:message code="country.FIPS.label" default="FIPS" /></span>
					
						<span class="property-value" aria-labelledby="FIPS-label"><g:fieldValue bean="${countryInstance}" field="FIPS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${countryInstance?.capital}">
				<li class="fieldcontain">
					<span id="capital-label" class="property-label"><g:message code="country.capital.label" default="Capital" /></span>
					
						<span class="property-value" aria-labelledby="capital-label"><g:fieldValue bean="${countryInstance}" field="capital"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${countryInstance?.continent}">
				<li class="fieldcontain">
					<span id="continent-label" class="property-label"><g:message code="country.continent.label" default="Continent" /></span>
					
						<span class="property-value" aria-labelledby="continent-label"><g:fieldValue bean="${countryInstance}" field="continent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${countryInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="country.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${countryInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${countryInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="country.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${countryInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:countryInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${countryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
