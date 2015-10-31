
<%@ page import="fmp.CumulativeArrivals" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cumulativeArrivals.label', default: 'CumulativeArrivals')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cumulativeArrivals" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cumulativeArrivals" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cumulativeArrivals">
			
				<g:if test="${cumulativeArrivalsInstance?.reportDate}">
				<li class="fieldcontain">
					<span id="reportDate-label" class="property-label"><g:message code="cumulativeArrivals.reportDate.label" default="Report Date" /></span>
					
						<span class="property-value" aria-labelledby="reportDate-label"><g:formatDate date="${cumulativeArrivalsInstance?.reportDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsInstance?.ISO3Reporting}">
				<li class="fieldcontain">
					<span id="ISO3Reporting-label" class="property-label"><g:message code="cumulativeArrivals.ISO3Reporting.label" default="ISO 3 Reporting" /></span>
					
						<span class="property-value" aria-labelledby="ISO3Reporting-label"><g:link controller="fmPoints" action="show" id="${cumulativeArrivalsInstance?.ISO3Reporting?.id}">${cumulativeArrivalsInstance?.ISO3Reporting?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsInstance?.arrivalsCumulative}">
				<li class="fieldcontain">
					<span id="arrivalsCumulative-label" class="property-label"><g:message code="cumulativeArrivals.arrivalsCumulative.label" default="Arrivals Cumulative" /></span>
					
						<span class="property-value" aria-labelledby="arrivalsCumulative-label"><g:fieldValue bean="${cumulativeArrivalsInstance}" field="arrivalsCumulative"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsInstance?.arrivalsCumulativeMale}">
				<li class="fieldcontain">
					<span id="arrivalsCumulativeMale-label" class="property-label"><g:message code="cumulativeArrivals.arrivalsCumulativeMale.label" default="Arrivals Cumulative Male" /></span>
					
						<span class="property-value" aria-labelledby="arrivalsCumulativeMale-label"><g:fieldValue bean="${cumulativeArrivalsInstance}" field="arrivalsCumulativeMale"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsInstance?.arrivalsCumulativeFemale}">
				<li class="fieldcontain">
					<span id="arrivalsCumulativeFemale-label" class="property-label"><g:message code="cumulativeArrivals.arrivalsCumulativeFemale.label" default="Arrivals Cumulative Female" /></span>
					
						<span class="property-value" aria-labelledby="arrivalsCumulativeFemale-label"><g:fieldValue bean="${cumulativeArrivalsInstance}" field="arrivalsCumulativeFemale"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsInstance?.arrivalsCumulativeAM}">
				<li class="fieldcontain">
					<span id="arrivalsCumulativeAM-label" class="property-label"><g:message code="cumulativeArrivals.arrivalsCumulativeAM.label" default="Arrivals Cumulative AM" /></span>
					
						<span class="property-value" aria-labelledby="arrivalsCumulativeAM-label"><g:fieldValue bean="${cumulativeArrivalsInstance}" field="arrivalsCumulativeAM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsInstance?.arrivalsCumulativeUAM}">
				<li class="fieldcontain">
					<span id="arrivalsCumulativeUAM-label" class="property-label"><g:message code="cumulativeArrivals.arrivalsCumulativeUAM.label" default="Arrivals Cumulative UAM" /></span>
					
						<span class="property-value" aria-labelledby="arrivalsCumulativeUAM-label"><g:fieldValue bean="${cumulativeArrivalsInstance}" field="arrivalsCumulativeUAM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsInstance?.arrivalsCumulativeSea}">
				<li class="fieldcontain">
					<span id="arrivalsCumulativeSea-label" class="property-label"><g:message code="cumulativeArrivals.arrivalsCumulativeSea.label" default="Arrivals Cumulative Sea" /></span>
					
						<span class="property-value" aria-labelledby="arrivalsCumulativeSea-label"><g:fieldValue bean="${cumulativeArrivalsInstance}" field="arrivalsCumulativeSea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsInstance?.arrivalsCumulativeAir}">
				<li class="fieldcontain">
					<span id="arrivalsCumulativeAir-label" class="property-label"><g:message code="cumulativeArrivals.arrivalsCumulativeAir.label" default="Arrivals Cumulative Air" /></span>
					
						<span class="property-value" aria-labelledby="arrivalsCumulativeAir-label"><g:fieldValue bean="${cumulativeArrivalsInstance}" field="arrivalsCumulativeAir"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsInstance?.arrivalsCumulativeLand}">
				<li class="fieldcontain">
					<span id="arrivalsCumulativeLand-label" class="property-label"><g:message code="cumulativeArrivals.arrivalsCumulativeLand.label" default="Arrivals Cumulative Land" /></span>
					
						<span class="property-value" aria-labelledby="arrivalsCumulativeLand-label"><g:fieldValue bean="${cumulativeArrivalsInstance}" field="arrivalsCumulativeLand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsInstance?.source}">
				<li class="fieldcontain">
					<span id="source-label" class="property-label"><g:message code="cumulativeArrivals.source.label" default="Source" /></span>
					
						<span class="property-value" aria-labelledby="source-label"><g:fieldValue bean="${cumulativeArrivalsInstance}" field="source"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="cumulativeArrivals.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${cumulativeArrivalsInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${cumulativeArrivalsInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="cumulativeArrivals.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${cumulativeArrivalsInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:cumulativeArrivalsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${cumulativeArrivalsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
