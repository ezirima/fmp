
<%@ page import="fmp.FmpUpdate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fmpUpdate.label', default: 'FmpUpdate')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-fmpUpdate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-fmpUpdate" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list fmpUpdate">
			
				<g:if test="${fmpUpdateInstance?.fmPoint}">
				<li class="fieldcontain">
					<span id="fmPoint-label" class="property-label"><g:message code="fmpUpdate.fmPoint.label" default="Fm Point" /></span>
					
						<span class="property-value" aria-labelledby="fmPoint-label"><g:link controller="fmPoints" action="show" id="${fmpUpdateInstance?.fmPoint?.id}">${fmpUpdateInstance?.fmPoint?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.fmUpdateID}">
				<li class="fieldcontain">
					<span id="fmUpdateID-label" class="property-label"><g:message code="fmpUpdate.fmUpdateID.label" default="Fm Update ID" /></span>
					
						<span class="property-value" aria-labelledby="fmUpdateID-label"><g:fieldValue bean="${fmpUpdateInstance}" field="fmUpdateID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.updateType}">
				<li class="fieldcontain">
					<span id="updateType-label" class="property-label"><g:message code="fmpUpdate.updateType.label" default="Update Type" /></span>
					
						<span class="property-value" aria-labelledby="updateType-label"><g:fieldValue bean="${fmpUpdateInstance}" field="updateType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.dateOfSurvey}">
				<li class="fieldcontain">
					<span id="dateOfSurvey-label" class="property-label"><g:message code="fmpUpdate.dateOfSurvey.label" default="Date Of Survey" /></span>
					
						<span class="property-value" aria-labelledby="dateOfSurvey-label"><g:formatDate date="${fmpUpdateInstance?.dateOfSurvey}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.dataCollector}">
				<li class="fieldcontain">
					<span id="dataCollector-label" class="property-label"><g:message code="fmpUpdate.dataCollector.label" default="Data Collector" /></span>
					
						<span class="property-value" aria-labelledby="dataCollector-label"><g:fieldValue bean="${fmpUpdateInstance}" field="dataCollector"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.locationName}">
				<li class="fieldcontain">
					<span id="locationName-label" class="property-label"><g:message code="fmpUpdate.locationName.label" default="Location Name" /></span>
					
						<span class="property-value" aria-labelledby="locationName-label"><g:fieldValue bean="${fmpUpdateInstance}" field="locationName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.locationCode}">
				<li class="fieldcontain">
					<span id="locationCode-label" class="property-label"><g:message code="fmpUpdate.locationCode.label" default="Location Code" /></span>
					
						<span class="property-value" aria-labelledby="locationCode-label"><g:fieldValue bean="${fmpUpdateInstance}" field="locationCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="fmpUpdate.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${fmpUpdateInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.hotspotApproach}">
				<li class="fieldcontain">
					<span id="hotspotApproach-label" class="property-label"><g:message code="fmpUpdate.hotspotApproach.label" default="Hotspot Approach" /></span>
					
						<span class="property-value" aria-labelledby="hotspotApproach-label"><g:formatBoolean boolean="${fmpUpdateInstance?.hotspotApproach}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.flowMonitoringSurveyOngoing}">
				<li class="fieldcontain">
					<span id="flowMonitoringSurveyOngoing-label" class="property-label"><g:message code="fmpUpdate.flowMonitoringSurveyOngoing.label" default="Flow Monitoring Survey Ongoing" /></span>
					
						<span class="property-value" aria-labelledby="flowMonitoringSurveyOngoing-label"><g:formatBoolean boolean="${fmpUpdateInstance?.flowMonitoringSurveyOngoing}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.commentsOnSituation}">
				<li class="fieldcontain">
					<span id="commentsOnSituation-label" class="property-label"><g:message code="fmpUpdate.commentsOnSituation.label" default="Comments On Situation" /></span>
					
						<span class="property-value" aria-labelledby="commentsOnSituation-label"><g:fieldValue bean="${fmpUpdateInstance}" field="commentsOnSituation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.sourceArrivals}">
				<li class="fieldcontain">
					<span id="sourceArrivals-label" class="property-label"><g:message code="fmpUpdate.sourceArrivals.label" default="Source Arrivals" /></span>
					
						<span class="property-value" aria-labelledby="sourceArrivals-label"><g:fieldValue bean="${fmpUpdateInstance}" field="sourceArrivals"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.externalUse}">
				<li class="fieldcontain">
					<span id="externalUse-label" class="property-label"><g:message code="fmpUpdate.externalUse.label" default="External Use" /></span>
					
						<span class="property-value" aria-labelledby="externalUse-label"><g:formatBoolean boolean="${fmpUpdateInstance?.externalUse}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.vehiclesVesselsLandings}">
				<li class="fieldcontain">
					<span id="vehiclesVesselsLandings-label" class="property-label"><g:message code="fmpUpdate.vehiclesVesselsLandings.label" default="Vehicles Vessels Landings" /></span>
					
						<span class="property-value" aria-labelledby="vehiclesVesselsLandings-label"><g:fieldValue bean="${fmpUpdateInstance}" field="vehiclesVesselsLandings"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.arrivals}">
				<li class="fieldcontain">
					<span id="arrivals-label" class="property-label"><g:message code="fmpUpdate.arrivals.label" default="Arrivals" /></span>
					
						<span class="property-value" aria-labelledby="arrivals-label"><g:fieldValue bean="${fmpUpdateInstance}" field="arrivals"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.males}">
				<li class="fieldcontain">
					<span id="males-label" class="property-label"><g:message code="fmpUpdate.males.label" default="Males" /></span>
					
						<span class="property-value" aria-labelledby="males-label"><g:fieldValue bean="${fmpUpdateInstance}" field="males"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.females}">
				<li class="fieldcontain">
					<span id="females-label" class="property-label"><g:message code="fmpUpdate.females.label" default="Females" /></span>
					
						<span class="property-value" aria-labelledby="females-label"><g:fieldValue bean="${fmpUpdateInstance}" field="females"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.minors}">
				<li class="fieldcontain">
					<span id="minors-label" class="property-label"><g:message code="fmpUpdate.minors.label" default="Minors" /></span>
					
						<span class="property-value" aria-labelledby="minors-label"><g:fieldValue bean="${fmpUpdateInstance}" field="minors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.UAMs}">
				<li class="fieldcontain">
					<span id="UAMs-label" class="property-label"><g:message code="fmpUpdate.UAMs.label" default="UAM s" /></span>
					
						<span class="property-value" aria-labelledby="UAMs-label"><g:fieldValue bean="${fmpUpdateInstance}" field="UAMs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.sourceVoTs}">
				<li class="fieldcontain">
					<span id="sourceVoTs-label" class="property-label"><g:message code="fmpUpdate.sourceVoTs.label" default="Source Vo Ts" /></span>
					
						<span class="property-value" aria-labelledby="sourceVoTs-label"><g:fieldValue bean="${fmpUpdateInstance}" field="sourceVoTs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.suspectedVoTs}">
				<li class="fieldcontain">
					<span id="suspectedVoTs-label" class="property-label"><g:message code="fmpUpdate.suspectedVoTs.label" default="Suspected Vo Ts" /></span>
					
						<span class="property-value" aria-labelledby="suspectedVoTs-label"><g:fieldValue bean="${fmpUpdateInstance}" field="suspectedVoTs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.identifiedVoTs}">
				<li class="fieldcontain">
					<span id="identifiedVoTs-label" class="property-label"><g:message code="fmpUpdate.identifiedVoTs.label" default="Identified Vo Ts" /></span>
					
						<span class="property-value" aria-labelledby="identifiedVoTs-label"><g:fieldValue bean="${fmpUpdateInstance}" field="identifiedVoTs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.rescuedBy}">
				<li class="fieldcontain">
					<span id="rescuedBy-label" class="property-label"><g:message code="fmpUpdate.rescuedBy.label" default="Rescued By" /></span>
					
						<span class="property-value" aria-labelledby="rescuedBy-label"><g:fieldValue bean="${fmpUpdateInstance}" field="rescuedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.deadMissing}">
				<li class="fieldcontain">
					<span id="deadMissing-label" class="property-label"><g:message code="fmpUpdate.deadMissing.label" default="Dead Missing" /></span>
					
						<span class="property-value" aria-labelledby="deadMissing-label"><g:fieldValue bean="${fmpUpdateInstance}" field="deadMissing"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.nationalityArrivals1}">
				<li class="fieldcontain">
					<span id="nationalityArrivals1-label" class="property-label"><g:message code="fmpUpdate.nationalityArrivals1.label" default="Nationality Arrivals1" /></span>
					
						<span class="property-value" aria-labelledby="nationalityArrivals1-label"><g:fieldValue bean="${fmpUpdateInstance}" field="nationalityArrivals1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.nationalityArrivals2}">
				<li class="fieldcontain">
					<span id="nationalityArrivals2-label" class="property-label"><g:message code="fmpUpdate.nationalityArrivals2.label" default="Nationality Arrivals2" /></span>
					
						<span class="property-value" aria-labelledby="nationalityArrivals2-label"><g:fieldValue bean="${fmpUpdateInstance}" field="nationalityArrivals2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.nationalityArrivals3}">
				<li class="fieldcontain">
					<span id="nationalityArrivals3-label" class="property-label"><g:message code="fmpUpdate.nationalityArrivals3.label" default="Nationality Arrivals3" /></span>
					
						<span class="property-value" aria-labelledby="nationalityArrivals3-label"><g:fieldValue bean="${fmpUpdateInstance}" field="nationalityArrivals3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.countryOfLastDeparture1}">
				<li class="fieldcontain">
					<span id="countryOfLastDeparture1-label" class="property-label"><g:message code="fmpUpdate.countryOfLastDeparture1.label" default="Country Of Last Departure1" /></span>
					
						<span class="property-value" aria-labelledby="countryOfLastDeparture1-label"><g:fieldValue bean="${fmpUpdateInstance}" field="countryOfLastDeparture1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.countryOfLastDeparture2}">
				<li class="fieldcontain">
					<span id="countryOfLastDeparture2-label" class="property-label"><g:message code="fmpUpdate.countryOfLastDeparture2.label" default="Country Of Last Departure2" /></span>
					
						<span class="property-value" aria-labelledby="countryOfLastDeparture2-label"><g:fieldValue bean="${fmpUpdateInstance}" field="countryOfLastDeparture2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.locationOfLastDeparture1}">
				<li class="fieldcontain">
					<span id="locationOfLastDeparture1-label" class="property-label"><g:message code="fmpUpdate.locationOfLastDeparture1.label" default="Location Of Last Departure1" /></span>
					
						<span class="property-value" aria-labelledby="locationOfLastDeparture1-label"><g:fieldValue bean="${fmpUpdateInstance}" field="locationOfLastDeparture1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.locationOfLastDeparture2}">
				<li class="fieldcontain">
					<span id="locationOfLastDeparture2-label" class="property-label"><g:message code="fmpUpdate.locationOfLastDeparture2.label" default="Location Of Last Departure2" /></span>
					
						<span class="property-value" aria-labelledby="locationOfLastDeparture2-label"><g:fieldValue bean="${fmpUpdateInstance}" field="locationOfLastDeparture2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmpUpdateInstance?.commentsOnArrivals}">
				<li class="fieldcontain">
					<span id="commentsOnArrivals-label" class="property-label"><g:message code="fmpUpdate.commentsOnArrivals.label" default="Comments On Arrivals" /></span>
					
						<span class="property-value" aria-labelledby="commentsOnArrivals-label"><g:fieldValue bean="${fmpUpdateInstance}" field="commentsOnArrivals"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:fmpUpdateInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${fmpUpdateInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
