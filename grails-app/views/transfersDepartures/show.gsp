
<%@ page import="fmp.TransfersDepartures" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transfersDepartures.label', default: 'TransfersDepartures')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-transfersDepartures" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-transfersDepartures" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list transfersDepartures">
			
				<g:if test="${transfersDeparturesInstance?.fmPoint}">
				<li class="fieldcontain">
					<span id="fmPoint-label" class="property-label"><g:message code="transfersDepartures.fmPoint.label" default="Fm Point" /></span>
					
						<span class="property-value" aria-labelledby="fmPoint-label"><g:link controller="fmPoints" action="show" id="${transfersDeparturesInstance?.fmPoint?.id}">${transfersDeparturesInstance?.fmPoint?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${transfersDeparturesInstance?.FMUpdate}">
				<li class="fieldcontain">
					<span id="FMUpdate-label" class="property-label"><g:message code="transfersDepartures.FMUpdate.label" default="FMU pdate" /></span>
					
						<span class="property-value" aria-labelledby="FMUpdate-label"><g:link controller="fmpUpdate" action="show" id="${transfersDeparturesInstance?.FMUpdate?.id}">${transfersDeparturesInstance?.FMUpdate?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${transfersDeparturesInstance?.nationality}">
				<li class="fieldcontain">
					<span id="nationality-label" class="property-label"><g:message code="transfersDepartures.nationality.label" default="Nationality" /></span>
					
						<span class="property-value" aria-labelledby="nationality-label"><g:fieldValue bean="${transfersDeparturesInstance}" field="nationality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transfersDeparturesInstance?.individuals}">
				<li class="fieldcontain">
					<span id="individuals-label" class="property-label"><g:message code="transfersDepartures.individuals.label" default="Individuals" /></span>
					
						<span class="property-value" aria-labelledby="individuals-label"><g:fieldValue bean="${transfersDeparturesInstance}" field="individuals"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transfersDeparturesInstance?.males}">
				<li class="fieldcontain">
					<span id="males-label" class="property-label"><g:message code="transfersDepartures.males.label" default="Males" /></span>
					
						<span class="property-value" aria-labelledby="males-label"><g:fieldValue bean="${transfersDeparturesInstance}" field="males"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transfersDeparturesInstance?.females}">
				<li class="fieldcontain">
					<span id="females-label" class="property-label"><g:message code="transfersDepartures.females.label" default="Females" /></span>
					
						<span class="property-value" aria-labelledby="females-label"><g:fieldValue bean="${transfersDeparturesInstance}" field="females"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transfersDeparturesInstance?.minors}">
				<li class="fieldcontain">
					<span id="minors-label" class="property-label"><g:message code="transfersDepartures.minors.label" default="Minors" /></span>
					
						<span class="property-value" aria-labelledby="minors-label"><g:fieldValue bean="${transfersDeparturesInstance}" field="minors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transfersDeparturesInstance?.UAMs}">
				<li class="fieldcontain">
					<span id="UAMs-label" class="property-label"><g:message code="transfersDepartures.UAMs.label" default="UAM s" /></span>
					
						<span class="property-value" aria-labelledby="UAMs-label"><g:fieldValue bean="${transfersDeparturesInstance}" field="UAMs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transfersDeparturesInstance?.nextLocation}">
				<li class="fieldcontain">
					<span id="nextLocation-label" class="property-label"><g:message code="transfersDepartures.nextLocation.label" default="Next Location" /></span>
					
						<span class="property-value" aria-labelledby="nextLocation-label"><g:fieldValue bean="${transfersDeparturesInstance}" field="nextLocation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transfersDeparturesInstance?.relocated}">
				<li class="fieldcontain">
					<span id="relocated-label" class="property-label"><g:message code="transfersDepartures.relocated.label" default="Relocated" /></span>
					
						<span class="property-value" aria-labelledby="relocated-label"><g:fieldValue bean="${transfersDeparturesInstance}" field="relocated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transfersDeparturesInstance?.commentsPresence}">
				<li class="fieldcontain">
					<span id="commentsPresence-label" class="property-label"><g:message code="transfersDepartures.commentsPresence.label" default="Comments Presence" /></span>
					
						<span class="property-value" aria-labelledby="commentsPresence-label"><g:fieldValue bean="${transfersDeparturesInstance}" field="commentsPresence"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transfersDeparturesInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="transfersDepartures.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${transfersDeparturesInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${transfersDeparturesInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="transfersDepartures.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${transfersDeparturesInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:transfersDeparturesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${transfersDeparturesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
