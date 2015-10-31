
<%@ page import="fmp.Questionaires" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'questionaires.label', default: 'Questionaires')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-questionaires" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-questionaires" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list questionaires">
			
				<g:if test="${questionairesInstance?.dateOfSurvey}">
				<li class="fieldcontain">
					<span id="dateOfSurvey-label" class="property-label"><g:message code="questionaires.dateOfSurvey.label" default="Date Of Survey" /></span>
					
						<span class="property-value" aria-labelledby="dateOfSurvey-label"><g:formatDate date="${questionairesInstance?.dateOfSurvey}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.dataCollector}">
				<li class="fieldcontain">
					<span id="dataCollector-label" class="property-label"><g:message code="questionaires.dataCollector.label" default="Data Collector" /></span>
					
						<span class="property-value" aria-labelledby="dataCollector-label"><g:fieldValue bean="${questionairesInstance}" field="dataCollector"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.countryOfSurvey}">
				<li class="fieldcontain">
					<span id="countryOfSurvey-label" class="property-label"><g:message code="questionaires.countryOfSurvey.label" default="Country Of Survey" /></span>
					
						<span class="property-value" aria-labelledby="countryOfSurvey-label"><g:link controller="country" action="show" id="${questionairesInstance?.countryOfSurvey?.id}">${questionairesInstance?.countryOfSurvey?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.locationName}">
				<li class="fieldcontain">
					<span id="locationName-label" class="property-label"><g:message code="questionaires.locationName.label" default="Location Name" /></span>
					
						<span class="property-value" aria-labelledby="locationName-label"><g:fieldValue bean="${questionairesInstance}" field="locationName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.locationCode}">
				<li class="fieldcontain">
					<span id="locationCode-label" class="property-label"><g:message code="questionaires.locationCode.label" default="Location Code" /></span>
					
						<span class="property-value" aria-labelledby="locationCode-label"><g:fieldValue bean="${questionairesInstance}" field="locationCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.flowMonitoringPoint}">
				<li class="fieldcontain">
					<span id="flowMonitoringPoint-label" class="property-label"><g:message code="questionaires.flowMonitoringPoint.label" default="Flow Monitoring Point" /></span>
					
						<span class="property-value" aria-labelledby="flowMonitoringPoint-label"><g:link controller="fmPoints" action="show" id="${questionairesInstance?.flowMonitoringPoint?.id}">${questionairesInstance?.flowMonitoringPoint?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.answerSheetNumber}">
				<li class="fieldcontain">
					<span id="answerSheetNumber-label" class="property-label"><g:message code="questionaires.answerSheetNumber.label" default="Answer Sheet Number" /></span>
					
						<span class="property-value" aria-labelledby="answerSheetNumber-label"><g:fieldValue bean="${questionairesInstance}" field="answerSheetNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.interviewNumber}">
				<li class="fieldcontain">
					<span id="interviewNumber-label" class="property-label"><g:message code="questionaires.interviewNumber.label" default="Interview Number" /></span>
					
						<span class="property-value" aria-labelledby="interviewNumber-label"><g:fieldValue bean="${questionairesInstance}" field="interviewNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.groupLandingNo}">
				<li class="fieldcontain">
					<span id="groupLandingNo-label" class="property-label"><g:message code="questionaires.groupLandingNo.label" default="Group Landing No" /></span>
					
						<span class="property-value" aria-labelledby="groupLandingNo-label"><g:fieldValue bean="${questionairesInstance}" field="groupLandingNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.previousSurveyParticipation}">
				<li class="fieldcontain">
					<span id="previousSurveyParticipation-label" class="property-label"><g:message code="questionaires.previousSurveyParticipation.label" default="Previous Survey Participation" /></span>
					
						<span class="property-value" aria-labelledby="previousSurveyParticipation-label"><g:formatBoolean boolean="${questionairesInstance?.previousSurveyParticipation}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="questionaires.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:link controller="country" action="show" id="${questionairesInstance?.country?.id}">${questionairesInstance?.country?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="questionaires.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${questionairesInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.nationality}">
				<li class="fieldcontain">
					<span id="nationality-label" class="property-label"><g:message code="questionaires.nationality.label" default="Nationality" /></span>
					
						<span class="property-value" aria-labelledby="nationality-label"><g:fieldValue bean="${questionairesInstance}" field="nationality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.sex}">
				<li class="fieldcontain">
					<span id="sex-label" class="property-label"><g:message code="questionaires.sex.label" default="Sex" /></span>
					
						<span class="property-value" aria-labelledby="sex-label"><g:fieldValue bean="${questionairesInstance}" field="sex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.age}">
				<li class="fieldcontain">
					<span id="age-label" class="property-label"><g:message code="questionaires.age.label" default="Age" /></span>
					
						<span class="property-value" aria-labelledby="age-label"><g:fieldValue bean="${questionairesInstance}" field="age"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.levelOfEducation}">
				<li class="fieldcontain">
					<span id="levelOfEducation-label" class="property-label"><g:message code="questionaires.levelOfEducation.label" default="Level Of Education" /></span>
					
						<span class="property-value" aria-labelledby="levelOfEducation-label"><g:fieldValue bean="${questionairesInstance}" field="levelOfEducation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.whoAreYouTravellingWith}">
				<li class="fieldcontain">
					<span id="whoAreYouTravellingWith-label" class="property-label"><g:message code="questionaires.whoAreYouTravellingWith.label" default="Who Are You Travelling With" /></span>
					
						<span class="property-value" aria-labelledby="whoAreYouTravellingWith-label"><g:fieldValue bean="${questionairesInstance}" field="whoAreYouTravellingWith"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.ifWithFamilyRelatives}">
				<li class="fieldcontain">
					<span id="ifWithFamilyRelatives-label" class="property-label"><g:message code="questionaires.ifWithFamilyRelatives.label" default="If With Family Relatives" /></span>
					
						<span class="property-value" aria-labelledby="ifWithFamilyRelatives-label"><g:fieldValue bean="${questionairesInstance}" field="ifWithFamilyRelatives"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.departureCountry}">
				<li class="fieldcontain">
					<span id="departureCountry-label" class="property-label"><g:message code="questionaires.departureCountry.label" default="Departure Country" /></span>
					
						<span class="property-value" aria-labelledby="departureCountry-label"><g:link controller="country" action="show" id="${questionairesInstance?.departureCountry?.id}">${questionairesInstance?.departureCountry?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.departureLocation}">
				<li class="fieldcontain">
					<span id="departureLocation-label" class="property-label"><g:message code="questionaires.departureLocation.label" default="Departure Location" /></span>
					
						<span class="property-value" aria-labelledby="departureLocation-label"><g:fieldValue bean="${questionairesInstance}" field="departureLocation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.howLongStayInCountryOfDeparture}">
				<li class="fieldcontain">
					<span id="howLongStayInCountryOfDeparture-label" class="property-label"><g:message code="questionaires.howLongStayInCountryOfDeparture.label" default="How Long Stay In Country Of Departure" /></span>
					
						<span class="property-value" aria-labelledby="howLongStayInCountryOfDeparture-label"><g:fieldValue bean="${questionairesInstance}" field="howLongStayInCountryOfDeparture"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.inRefugeeCamp}">
				<li class="fieldcontain">
					<span id="inRefugeeCamp-label" class="property-label"><g:message code="questionaires.inRefugeeCamp.label" default="In Refugee Camp" /></span>
					
						<span class="property-value" aria-labelledby="inRefugeeCamp-label"><g:fieldValue bean="${questionairesInstance}" field="inRefugeeCamp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.whyDidYouLeave}">
				<li class="fieldcontain">
					<span id="whyDidYouLeave-label" class="property-label"><g:message code="questionaires.whyDidYouLeave.label" default="Why Did You Leave" /></span>
					
						<span class="property-value" aria-labelledby="whyDidYouLeave-label"><g:fieldValue bean="${questionairesInstance}" field="whyDidYouLeave"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.whenDidYouLeave}">
				<li class="fieldcontain">
					<span id="whenDidYouLeave-label" class="property-label"><g:message code="questionaires.whenDidYouLeave.label" default="When Did You Leave" /></span>
					
						<span class="property-value" aria-labelledby="whenDidYouLeave-label"><g:fieldValue bean="${questionairesInstance}" field="whenDidYouLeave"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.transitCountry1}">
				<li class="fieldcontain">
					<span id="transitCountry1-label" class="property-label"><g:message code="questionaires.transitCountry1.label" default="Transit Country1" /></span>
					
						<span class="property-value" aria-labelledby="transitCountry1-label"><g:link controller="country" action="show" id="${questionairesInstance?.transitCountry1?.id}">${questionairesInstance?.transitCountry1?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.transitCountry1Location}">
				<li class="fieldcontain">
					<span id="transitCountry1Location-label" class="property-label"><g:message code="questionaires.transitCountry1Location.label" default="Transit Country1 Location" /></span>
					
						<span class="property-value" aria-labelledby="transitCountry1Location-label"><g:fieldValue bean="${questionairesInstance}" field="transitCountry1Location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.departureDateFromCountry1}">
				<li class="fieldcontain">
					<span id="departureDateFromCountry1-label" class="property-label"><g:message code="questionaires.departureDateFromCountry1.label" default="Departure Date From Country1" /></span>
					
						<span class="property-value" aria-labelledby="departureDateFromCountry1-label"><g:formatDate date="${questionairesInstance?.departureDateFromCountry1}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.mainTransportModeToLeaveCountry1}">
				<li class="fieldcontain">
					<span id="mainTransportModeToLeaveCountry1-label" class="property-label"><g:message code="questionaires.mainTransportModeToLeaveCountry1.label" default="Main Transport Mode To Leave Country1" /></span>
					
						<span class="property-value" aria-labelledby="mainTransportModeToLeaveCountry1-label"><g:fieldValue bean="${questionairesInstance}" field="mainTransportModeToLeaveCountry1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.transitCountry2}">
				<li class="fieldcontain">
					<span id="transitCountry2-label" class="property-label"><g:message code="questionaires.transitCountry2.label" default="Transit Country2" /></span>
					
						<span class="property-value" aria-labelledby="transitCountry2-label"><g:link controller="country" action="show" id="${questionairesInstance?.transitCountry2?.id}">${questionairesInstance?.transitCountry2?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.transitCountry2Location}">
				<li class="fieldcontain">
					<span id="transitCountry2Location-label" class="property-label"><g:message code="questionaires.transitCountry2Location.label" default="Transit Country2 Location" /></span>
					
						<span class="property-value" aria-labelledby="transitCountry2Location-label"><g:fieldValue bean="${questionairesInstance}" field="transitCountry2Location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.departureDateFromCountry2}">
				<li class="fieldcontain">
					<span id="departureDateFromCountry2-label" class="property-label"><g:message code="questionaires.departureDateFromCountry2.label" default="Departure Date From Country2" /></span>
					
						<span class="property-value" aria-labelledby="departureDateFromCountry2-label"><g:formatDate date="${questionairesInstance?.departureDateFromCountry2}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.mainTransportModeToLeaveCountry2}">
				<li class="fieldcontain">
					<span id="mainTransportModeToLeaveCountry2-label" class="property-label"><g:message code="questionaires.mainTransportModeToLeaveCountry2.label" default="Main Transport Mode To Leave Country2" /></span>
					
						<span class="property-value" aria-labelledby="mainTransportModeToLeaveCountry2-label"><g:fieldValue bean="${questionairesInstance}" field="mainTransportModeToLeaveCountry2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.transitCountry3}">
				<li class="fieldcontain">
					<span id="transitCountry3-label" class="property-label"><g:message code="questionaires.transitCountry3.label" default="Transit Country3" /></span>
					
						<span class="property-value" aria-labelledby="transitCountry3-label"><g:link controller="country" action="show" id="${questionairesInstance?.transitCountry3?.id}">${questionairesInstance?.transitCountry3?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.transitCountry3Location}">
				<li class="fieldcontain">
					<span id="transitCountry3Location-label" class="property-label"><g:message code="questionaires.transitCountry3Location.label" default="Transit Country3 Location" /></span>
					
						<span class="property-value" aria-labelledby="transitCountry3Location-label"><g:fieldValue bean="${questionairesInstance}" field="transitCountry3Location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.departureDateFromCountry3}">
				<li class="fieldcontain">
					<span id="departureDateFromCountry3-label" class="property-label"><g:message code="questionaires.departureDateFromCountry3.label" default="Departure Date From Country3" /></span>
					
						<span class="property-value" aria-labelledby="departureDateFromCountry3-label"><g:formatDate date="${questionairesInstance?.departureDateFromCountry3}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.mainTransportModeToLeaveCountry3}">
				<li class="fieldcontain">
					<span id="mainTransportModeToLeaveCountry3-label" class="property-label"><g:message code="questionaires.mainTransportModeToLeaveCountry3.label" default="Main Transport Mode To Leave Country3" /></span>
					
						<span class="property-value" aria-labelledby="mainTransportModeToLeaveCountry3-label"><g:fieldValue bean="${questionairesInstance}" field="mainTransportModeToLeaveCountry3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.costOfTheJourney}">
				<li class="fieldcontain">
					<span id="costOfTheJourney-label" class="property-label"><g:message code="questionaires.costOfTheJourney.label" default="Cost Of The Journey" /></span>
					
						<span class="property-value" aria-labelledby="costOfTheJourney-label"><g:fieldValue bean="${questionairesInstance}" field="costOfTheJourney"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.intendedCountry}">
				<li class="fieldcontain">
					<span id="intendedCountry-label" class="property-label"><g:message code="questionaires.intendedCountry.label" default="Intended Country" /></span>
					
						<span class="property-value" aria-labelledby="intendedCountry-label"><g:link controller="country" action="show" id="${questionairesInstance?.intendedCountry?.id}">${questionairesInstance?.intendedCountry?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.doYouHaveRelativesInDestination}">
				<li class="fieldcontain">
					<span id="doYouHaveRelativesInDestination-label" class="property-label"><g:message code="questionaires.doYouHaveRelativesInDestination.label" default="Do You Have Relatives In Destination" /></span>
					
						<span class="property-value" aria-labelledby="doYouHaveRelativesInDestination-label"><g:fieldValue bean="${questionairesInstance}" field="doYouHaveRelativesInDestination"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.howLongRelativesInDestinationCountry}">
				<li class="fieldcontain">
					<span id="howLongRelativesInDestinationCountry-label" class="property-label"><g:message code="questionaires.howLongRelativesInDestinationCountry.label" default="How Long Relatives In Destination Country" /></span>
					
						<span class="property-value" aria-labelledby="howLongRelativesInDestinationCountry-label"><g:fieldValue bean="${questionairesInstance}" field="howLongRelativesInDestinationCountry"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionairesInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="questionaires.comments.label" default="Comments" /></span>
					
						<span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${questionairesInstance}" field="comments"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:questionairesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${questionairesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
