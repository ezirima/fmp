
<%@ page import="fmp.FmPoints" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fmPoints.label', default: 'FmPoints')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-fmPoints" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-fmPoints" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list fmPoints">
			
				<g:if test="${fmPointsInstance?.fmPointName}">
				<li class="fieldcontain">
					<span id="fmPointName-label" class="property-label"><g:message code="fmPoints.fmPointName.label" default="Fm Point Name" /></span>
					
						<span class="property-value" aria-labelledby="fmPointName-label"><g:fieldValue bean="${fmPointsInstance}" field="fmPointName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.dateOfSurvey}">
				<li class="fieldcontain">
					<span id="dateOfSurvey-label" class="property-label"><g:message code="fmPoints.dateOfSurvey.label" default="Date Of Survey" /></span>
					
						<span class="property-value" aria-labelledby="dateOfSurvey-label"><g:formatDate date="${fmPointsInstance?.dateOfSurvey}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.dataCollector}">
				<li class="fieldcontain">
					<span id="dataCollector-label" class="property-label"><g:message code="fmPoints.dataCollector.label" default="Data Collector" /></span>
					
						<span class="property-value" aria-labelledby="dataCollector-label"><g:fieldValue bean="${fmPointsInstance}" field="dataCollector"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="fmPoints.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:link controller="country" action="show" id="${fmPointsInstance?.country?.id}">${fmPointsInstance?.country?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.region}">
				<li class="fieldcontain">
					<span id="region-label" class="property-label"><g:message code="fmPoints.region.label" default="Region" /></span>
					
						<span class="property-value" aria-labelledby="region-label"><g:fieldValue bean="${fmPointsInstance}" field="region"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.metropolitanProvince}">
				<li class="fieldcontain">
					<span id="metropolitanProvince-label" class="property-label"><g:message code="fmPoints.metropolitanProvince.label" default="Metropolitan Province" /></span>
					
						<span class="property-value" aria-labelledby="metropolitanProvince-label"><g:fieldValue bean="${fmPointsInstance}" field="metropolitanProvince"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.municipality}">
				<li class="fieldcontain">
					<span id="municipality-label" class="property-label"><g:message code="fmPoints.municipality.label" default="Municipality" /></span>
					
						<span class="property-value" aria-labelledby="municipality-label"><g:fieldValue bean="${fmPointsInstance}" field="municipality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.locationName}">
				<li class="fieldcontain">
					<span id="locationName-label" class="property-label"><g:message code="fmPoints.locationName.label" default="Location Name" /></span>
					
						<span class="property-value" aria-labelledby="locationName-label"><g:fieldValue bean="${fmPointsInstance}" field="locationName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.locationType}">
				<li class="fieldcontain">
					<span id="locationType-label" class="property-label"><g:message code="fmPoints.locationType.label" default="Location Type" /></span>
					
						<span class="property-value" aria-labelledby="locationType-label"><g:link controller="locationType" action="show" id="${fmPointsInstance?.locationType?.id}">${fmPointsInstance?.locationType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.locationCode}">
				<li class="fieldcontain">
					<span id="locationCode-label" class="property-label"><g:message code="fmPoints.locationCode.label" default="Location Code" /></span>
					
						<span class="property-value" aria-labelledby="locationCode-label"><g:fieldValue bean="${fmPointsInstance}" field="locationCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.gpsLatitude}">
				<li class="fieldcontain">
					<span id="gpsLatitude-label" class="property-label"><g:message code="fmPoints.gpsLatitude.label" default="Gps Latitude" /></span>
					
						<span class="property-value" aria-labelledby="gpsLatitude-label"><g:fieldValue bean="${fmPointsInstance}" field="gpsLatitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.gpsLongitude}">
				<li class="fieldcontain">
					<span id="gpsLongitude-label" class="property-label"><g:message code="fmPoints.gpsLongitude.label" default="Gps Longitude" /></span>
					
						<span class="property-value" aria-labelledby="gpsLongitude-label"><g:fieldValue bean="${fmPointsInstance}" field="gpsLongitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.nearestTown}">
				<li class="fieldcontain">
					<span id="nearestTown-label" class="property-label"><g:message code="fmPoints.nearestTown.label" default="Nearest Town" /></span>
					
						<span class="property-value" aria-labelledby="nearestTown-label"><g:fieldValue bean="${fmPointsInstance}" field="nearestTown"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.capacity}">
				<li class="fieldcontain">
					<span id="capacity-label" class="property-label"><g:message code="fmPoints.capacity.label" default="Capacity" /></span>
					
						<span class="property-value" aria-labelledby="capacity-label"><g:fieldValue bean="${fmPointsInstance}" field="capacity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.arrivingTransport}">
				<li class="fieldcontain">
					<span id="arrivingTransport-label" class="property-label"><g:message code="fmPoints.arrivingTransport.label" default="Arriving Transport" /></span>
					
						<span class="property-value" aria-labelledby="arrivingTransport-label"><g:fieldValue bean="${fmPointsInstance}" field="arrivingTransport"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.departingTransport}">
				<li class="fieldcontain">
					<span id="departingTransport-label" class="property-label"><g:message code="fmPoints.departingTransport.label" default="Departing Transport" /></span>
					
						<span class="property-value" aria-labelledby="departingTransport-label"><g:fieldValue bean="${fmPointsInstance}" field="departingTransport"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.nationalAuthPresence}">
				<li class="fieldcontain">
					<span id="nationalAuthPresence-label" class="property-label"><g:message code="fmPoints.nationalAuthPresence.label" default="National Auth Presence" /></span>
					
						<span class="property-value" aria-labelledby="nationalAuthPresence-label"><g:formatBoolean boolean="${fmPointsInstance?.nationalAuthPresence}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.humanitarianActorsPresence}">
				<li class="fieldcontain">
					<span id="humanitarianActorsPresence-label" class="property-label"><g:message code="fmPoints.humanitarianActorsPresence.label" default="Humanitarian Actors Presence" /></span>
					
						<span class="property-value" aria-labelledby="humanitarianActorsPresence-label"><g:formatBoolean boolean="${fmPointsInstance?.humanitarianActorsPresence}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.accesIom}">
				<li class="fieldcontain">
					<span id="accesIom-label" class="property-label"><g:message code="fmPoints.accesIom.label" default="Acces Iom" /></span>
					
						<span class="property-value" aria-labelledby="accesIom-label"><g:formatBoolean boolean="${fmPointsInstance?.accesIom}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="fmPoints.comments.label" default="Comments" /></span>
					
						<span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${fmPointsInstance}" field="comments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="fmPoints.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${fmPointsInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fmPointsInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="fmPoints.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${fmPointsInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:fmPointsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${fmPointsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
