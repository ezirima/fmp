
<%@ page import="fmp.CumulativeArrivalsByNationality" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cumulativeArrivalsByNationality.label', default: 'CumulativeArrivalsByNationality')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cumulativeArrivalsByNationality" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cumulativeArrivalsByNationality" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cumulativeArrivalsByNationality">
			
				<g:if test="${cumulativeArrivalsByNationalityInstance?.reportDate}">
				<li class="fieldcontain">
					<span id="reportDate-label" class="property-label"><g:message code="cumulativeArrivalsByNationality.reportDate.label" default="Report Date" /></span>
					
						<span class="property-value" aria-labelledby="reportDate-label"><g:formatDate date="${cumulativeArrivalsByNationalityInstance?.reportDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsByNationalityInstance?.ISO3Origin}">
				<li class="fieldcontain">
					<span id="ISO3Origin-label" class="property-label"><g:message code="cumulativeArrivalsByNationality.ISO3Origin.label" default="ISO 3 Origin" /></span>
					
						<span class="property-value" aria-labelledby="ISO3Origin-label"><g:link controller="fmPoints" action="show" id="${cumulativeArrivalsByNationalityInstance?.ISO3Origin?.id}">${cumulativeArrivalsByNationalityInstance?.ISO3Origin?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsByNationalityInstance?.arrivalsCumulative}">
				<li class="fieldcontain">
					<span id="arrivalsCumulative-label" class="property-label"><g:message code="cumulativeArrivalsByNationality.arrivalsCumulative.label" default="Arrivals Cumulative" /></span>
					
						<span class="property-value" aria-labelledby="arrivalsCumulative-label"><g:fieldValue bean="${cumulativeArrivalsByNationalityInstance}" field="arrivalsCumulative"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsByNationalityInstance?.arrivalsCumulativeMale}">
				<li class="fieldcontain">
					<span id="arrivalsCumulativeMale-label" class="property-label"><g:message code="cumulativeArrivalsByNationality.arrivalsCumulativeMale.label" default="Arrivals Cumulative Male" /></span>
					
						<span class="property-value" aria-labelledby="arrivalsCumulativeMale-label"><g:fieldValue bean="${cumulativeArrivalsByNationalityInstance}" field="arrivalsCumulativeMale"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsByNationalityInstance?.arrivalsCumulativeFemale}">
				<li class="fieldcontain">
					<span id="arrivalsCumulativeFemale-label" class="property-label"><g:message code="cumulativeArrivalsByNationality.arrivalsCumulativeFemale.label" default="Arrivals Cumulative Female" /></span>
					
						<span class="property-value" aria-labelledby="arrivalsCumulativeFemale-label"><g:fieldValue bean="${cumulativeArrivalsByNationalityInstance}" field="arrivalsCumulativeFemale"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsByNationalityInstance?.arrivalsCumulativeAM}">
				<li class="fieldcontain">
					<span id="arrivalsCumulativeAM-label" class="property-label"><g:message code="cumulativeArrivalsByNationality.arrivalsCumulativeAM.label" default="Arrivals Cumulative AM" /></span>
					
						<span class="property-value" aria-labelledby="arrivalsCumulativeAM-label"><g:fieldValue bean="${cumulativeArrivalsByNationalityInstance}" field="arrivalsCumulativeAM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsByNationalityInstance?.arrivalsCumulativeUAM}">
				<li class="fieldcontain">
					<span id="arrivalsCumulativeUAM-label" class="property-label"><g:message code="cumulativeArrivalsByNationality.arrivalsCumulativeUAM.label" default="Arrivals Cumulative UAM" /></span>
					
						<span class="property-value" aria-labelledby="arrivalsCumulativeUAM-label"><g:fieldValue bean="${cumulativeArrivalsByNationalityInstance}" field="arrivalsCumulativeUAM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsByNationalityInstance?.ISO3Reporting}">
				<li class="fieldcontain">
					<span id="ISO3Reporting-label" class="property-label"><g:message code="cumulativeArrivalsByNationality.ISO3Reporting.label" default="ISO 3 Reporting" /></span>
					
						<span class="property-value" aria-labelledby="ISO3Reporting-label"><g:link controller="fmPoints" action="show" id="${cumulativeArrivalsByNationalityInstance?.ISO3Reporting?.id}">${cumulativeArrivalsByNationalityInstance?.ISO3Reporting?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsByNationalityInstance?.source}">
				<li class="fieldcontain">
					<span id="source-label" class="property-label"><g:message code="cumulativeArrivalsByNationality.source.label" default="Source" /></span>
					
						<span class="property-value" aria-labelledby="source-label"><g:fieldValue bean="${cumulativeArrivalsByNationalityInstance}" field="source"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsByNationalityInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="cumulativeArrivalsByNationality.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${cumulativeArrivalsByNationalityInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsByNationalityInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="cumulativeArrivalsByNationality.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${cumulativeArrivalsByNationalityInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:cumulativeArrivalsByNationalityInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${cumulativeArrivalsByNationalityInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
