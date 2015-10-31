
<%@ page import="fmp.Presence" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'presence.label', default: 'Presence')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-presence" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-presence" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list presence">
			
				<g:if test="${presenceInstance?.fmPoint}">
				<li class="fieldcontain">
					<span id="fmPoint-label" class="property-label"><g:message code="presence.fmPoint.label" default="Fm Point" /></span>
					
						<span class="property-value" aria-labelledby="fmPoint-label"><g:link controller="fmPoints" action="show" id="${presenceInstance?.fmPoint?.id}">${presenceInstance?.fmPoint?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${presenceInstance?.FMUpdate}">
				<li class="fieldcontain">
					<span id="FMUpdate-label" class="property-label"><g:message code="presence.FMUpdate.label" default="FMU pdate" /></span>
					
						<span class="property-value" aria-labelledby="FMUpdate-label"><g:link controller="fmpUpdate" action="show" id="${presenceInstance?.FMUpdate?.id}">${presenceInstance?.FMUpdate?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${presenceInstance?.nationality}">
				<li class="fieldcontain">
					<span id="nationality-label" class="property-label"><g:message code="presence.nationality.label" default="Nationality" /></span>
					
						<span class="property-value" aria-labelledby="nationality-label"><g:fieldValue bean="${presenceInstance}" field="nationality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${presenceInstance?.individuals}">
				<li class="fieldcontain">
					<span id="individuals-label" class="property-label"><g:message code="presence.individuals.label" default="Individuals" /></span>
					
						<span class="property-value" aria-labelledby="individuals-label"><g:fieldValue bean="${presenceInstance}" field="individuals"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${presenceInstance?.males}">
				<li class="fieldcontain">
					<span id="males-label" class="property-label"><g:message code="presence.males.label" default="Males" /></span>
					
						<span class="property-value" aria-labelledby="males-label"><g:fieldValue bean="${presenceInstance}" field="males"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${presenceInstance?.females}">
				<li class="fieldcontain">
					<span id="females-label" class="property-label"><g:message code="presence.females.label" default="Females" /></span>
					
						<span class="property-value" aria-labelledby="females-label"><g:fieldValue bean="${presenceInstance}" field="females"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${presenceInstance?.minors}">
				<li class="fieldcontain">
					<span id="minors-label" class="property-label"><g:message code="presence.minors.label" default="Minors" /></span>
					
						<span class="property-value" aria-labelledby="minors-label"><g:fieldValue bean="${presenceInstance}" field="minors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${presenceInstance?.UAMs}">
				<li class="fieldcontain">
					<span id="UAMs-label" class="property-label"><g:message code="presence.UAMs.label" default="UAM s" /></span>
					
						<span class="property-value" aria-labelledby="UAMs-label"><g:fieldValue bean="${presenceInstance}" field="UAMs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${presenceInstance?.fingerPrinted}">
				<li class="fieldcontain">
					<span id="fingerPrinted-label" class="property-label"><g:message code="presence.fingerPrinted.label" default="Finger Printed" /></span>
					
						<span class="property-value" aria-labelledby="fingerPrinted-label"><g:formatBoolean boolean="${presenceInstance?.fingerPrinted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${presenceInstance?.averageLengthOfStay}">
				<li class="fieldcontain">
					<span id="averageLengthOfStay-label" class="property-label"><g:message code="presence.averageLengthOfStay.label" default="Average Length Of Stay" /></span>
					
						<span class="property-value" aria-labelledby="averageLengthOfStay-label"><g:fieldValue bean="${presenceInstance}" field="averageLengthOfStay"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${presenceInstance?.commentsPresence}">
				<li class="fieldcontain">
					<span id="commentsPresence-label" class="property-label"><g:message code="presence.commentsPresence.label" default="Comments Presence" /></span>
					
						<span class="property-value" aria-labelledby="commentsPresence-label"><g:fieldValue bean="${presenceInstance}" field="commentsPresence"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${presenceInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="presence.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${presenceInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${presenceInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="presence.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${presenceInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:presenceInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${presenceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
