<%@ page import="fmp.Questionaires" %>



<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'dateOfSurvey', 'error')} ">
	<label for="dateOfSurvey">
		<g:message code="questionaires.dateOfSurvey.label" default="Date Of Survey" />
		
	</label>
	<g:datePicker name="dateOfSurvey" precision="day"  value="${questionairesInstance?.dateOfSurvey}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'dataCollector', 'error')} ">
	<label for="dataCollector">
		<g:message code="questionaires.dataCollector.label" default="Data Collector" />
		
	</label>
	<g:textField name="dataCollector" value="${questionairesInstance?.dataCollector}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'countryOfSurvey', 'error')} ">
	<label for="countryOfSurvey">
		<g:message code="questionaires.countryOfSurvey.label" default="Country Of Survey" />
		
	</label>
	<g:select id="countryOfSurvey" name="countryOfSurvey.id" from="${fmp.Country.list()}" optionKey="id" value="${questionairesInstance?.countryOfSurvey?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'locationName', 'error')} ">
	<label for="locationName">
		<g:message code="questionaires.locationName.label" default="Location Name" />
		
	</label>
	<g:textField name="locationName" value="${questionairesInstance?.locationName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'locationCode', 'error')} ">
	<label for="locationCode">
		<g:message code="questionaires.locationCode.label" default="Location Code" />
		
	</label>
	<g:textField name="locationCode" value="${questionairesInstance?.locationCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'flowMonitoringPoint', 'error')} ">
	<label for="flowMonitoringPoint">
		<g:message code="questionaires.flowMonitoringPoint.label" default="Flow Monitoring Point" />
		
	</label>
	<g:select id="flowMonitoringPoint" name="flowMonitoringPoint.id" from="${fmp.FmPoints.list()}" optionKey="id" value="${questionairesInstance?.flowMonitoringPoint?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'answerSheetNumber', 'error')} required">
	<label for="answerSheetNumber">
		<g:message code="questionaires.answerSheetNumber.label" default="Answer Sheet Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="answerSheetNumber" type="number" min="0" value="${questionairesInstance.answerSheetNumber}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'interviewNumber', 'error')} required">
	<label for="interviewNumber">
		<g:message code="questionaires.interviewNumber.label" default="Interview Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="interviewNumber" type="number" min="0" value="${questionairesInstance.interviewNumber}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'groupLandingNo', 'error')} required">
	<label for="groupLandingNo">
		<g:message code="questionaires.groupLandingNo.label" default="Group Landing No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="groupLandingNo" type="number" min="0" value="${questionairesInstance.groupLandingNo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'previousSurveyParticipation', 'error')} ">
	<label for="previousSurveyParticipation">
		<g:message code="questionaires.previousSurveyParticipation.label" default="Previous Survey Participation" />
		
	</label>
	<g:checkBox name="previousSurveyParticipation" value="${questionairesInstance?.previousSurveyParticipation}" />

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="questionaires.country.label" default="Country" />
		
	</label>
	<g:select id="country" name="country.id" from="${fmp.Country.list()}" optionKey="id" value="${questionairesInstance?.country?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="questionaires.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${questionairesInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'nationality', 'error')} ">
	<label for="nationality">
		<g:message code="questionaires.nationality.label" default="Nationality" />
		
	</label>
	<g:textField name="nationality" value="${questionairesInstance?.nationality}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'sex', 'error')} required">
	<label for="sex">
		<g:message code="questionaires.sex.label" default="Sex" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sex" from="${questionairesInstance.constraints.sex.inList}" required="" value="${questionairesInstance?.sex}" valueMessagePrefix="questionaires.sex"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'age', 'error')} required">
	<label for="age">
		<g:message code="questionaires.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="age" type="number" min="0" value="${questionairesInstance.age}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'levelOfEducation', 'error')} ">
	<label for="levelOfEducation">
		<g:message code="questionaires.levelOfEducation.label" default="Level Of Education" />
		
	</label>
	<g:select name="levelOfEducation" from="${fmp.Education?.values()}" keys="${fmp.Education.values()*.name()}" value="${questionairesInstance?.levelOfEducation?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'whoAreYouTravellingWith', 'error')} required">
	<label for="whoAreYouTravellingWith">
		<g:message code="questionaires.whoAreYouTravellingWith.label" default="Who Are You Travelling With" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="whoAreYouTravellingWith" from="${questionairesInstance.constraints.whoAreYouTravellingWith.inList}" required="" value="${questionairesInstance?.whoAreYouTravellingWith}" valueMessagePrefix="questionaires.whoAreYouTravellingWith"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'ifWithFamilyRelatives', 'error')} ">
	<label for="ifWithFamilyRelatives">
		<g:message code="questionaires.ifWithFamilyRelatives.label" default="If With Family Relatives" />
		
	</label>
	<g:select name="ifWithFamilyRelatives" from="${fmp.RelationType?.values()}" keys="${fmp.RelationType.values()*.name()}" value="${questionairesInstance?.ifWithFamilyRelatives?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'departureCountry', 'error')} ">
	<label for="departureCountry">
		<g:message code="questionaires.departureCountry.label" default="Departure Country" />
		
	</label>
	<g:select id="departureCountry" name="departureCountry.id" from="${fmp.Country.list()}" optionKey="id" value="${questionairesInstance?.departureCountry?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'departureLocation', 'error')} ">
	<label for="departureLocation">
		<g:message code="questionaires.departureLocation.label" default="Departure Location" />
		
	</label>
	<g:textField name="departureLocation" value="${questionairesInstance?.departureLocation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'howLongStayInCountryOfDeparture', 'error')} required">
	<label for="howLongStayInCountryOfDeparture">
		<g:message code="questionaires.howLongStayInCountryOfDeparture.label" default="How Long Stay In Country Of Departure" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="howLongStayInCountryOfDeparture" from="${questionairesInstance.constraints.howLongStayInCountryOfDeparture.inList}" required="" value="${questionairesInstance?.howLongStayInCountryOfDeparture}" valueMessagePrefix="questionaires.howLongStayInCountryOfDeparture"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'inRefugeeCamp', 'error')} required">
	<label for="inRefugeeCamp">
		<g:message code="questionaires.inRefugeeCamp.label" default="In Refugee Camp" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="inRefugeeCamp" from="${questionairesInstance.constraints.inRefugeeCamp.inList}" required="" value="${questionairesInstance?.inRefugeeCamp}" valueMessagePrefix="questionaires.inRefugeeCamp"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'whyDidYouLeave', 'error')} ">
	<label for="whyDidYouLeave">
		<g:message code="questionaires.whyDidYouLeave.label" default="Why Did You Leave" />
		
	</label>
	<g:select name="whyDidYouLeave" from="${fmp.ReasonLeave?.values()}" keys="${fmp.ReasonLeave.values()*.name()}" value="${questionairesInstance?.whyDidYouLeave?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'whenDidYouLeave', 'error')} ">
	<label for="whenDidYouLeave">
		<g:message code="questionaires.whenDidYouLeave.label" default="When Did You Leave" />
		
	</label>
	<g:select name="whenDidYouLeave" from="${fmp.WhenLeave?.values()}" keys="${fmp.WhenLeave.values()*.name()}" value="${questionairesInstance?.whenDidYouLeave?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'transitCountry1', 'error')} ">
	<label for="transitCountry1">
		<g:message code="questionaires.transitCountry1.label" default="Transit Country1" />
		
	</label>
	<g:select id="transitCountry1" name="transitCountry1.id" from="${fmp.Country.list()}" optionKey="id" value="${questionairesInstance?.transitCountry1?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'transitCountry1Location', 'error')} ">
	<label for="transitCountry1Location">
		<g:message code="questionaires.transitCountry1Location.label" default="Transit Country1 Location" />
		
	</label>
	<g:textField name="transitCountry1Location" value="${questionairesInstance?.transitCountry1Location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'departureDateFromCountry1', 'error')} ">
	<label for="departureDateFromCountry1">
		<g:message code="questionaires.departureDateFromCountry1.label" default="Departure Date From Country1" />
		
	</label>
	<g:datePicker name="departureDateFromCountry1" precision="day"  value="${questionairesInstance?.departureDateFromCountry1}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'mainTransportModeToLeaveCountry1', 'error')} ">
	<label for="mainTransportModeToLeaveCountry1">
		<g:message code="questionaires.mainTransportModeToLeaveCountry1.label" default="Main Transport Mode To Leave Country1" />
		
	</label>
	<g:select name="mainTransportModeToLeaveCountry1" from="${fmp.TransportMode?.values()}" keys="${fmp.TransportMode.values()*.name()}" value="${questionairesInstance?.mainTransportModeToLeaveCountry1?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'transitCountry2', 'error')} ">
	<label for="transitCountry2">
		<g:message code="questionaires.transitCountry2.label" default="Transit Country2" />
		
	</label>
	<g:select id="transitCountry2" name="transitCountry2.id" from="${fmp.Country.list()}" optionKey="id" value="${questionairesInstance?.transitCountry2?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'transitCountry2Location', 'error')} ">
	<label for="transitCountry2Location">
		<g:message code="questionaires.transitCountry2Location.label" default="Transit Country2 Location" />
		
	</label>
	<g:textField name="transitCountry2Location" value="${questionairesInstance?.transitCountry2Location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'departureDateFromCountry2', 'error')} ">
	<label for="departureDateFromCountry2">
		<g:message code="questionaires.departureDateFromCountry2.label" default="Departure Date From Country2" />
		
	</label>
	<g:datePicker name="departureDateFromCountry2" precision="day"  value="${questionairesInstance?.departureDateFromCountry2}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'mainTransportModeToLeaveCountry2', 'error')} ">
	<label for="mainTransportModeToLeaveCountry2">
		<g:message code="questionaires.mainTransportModeToLeaveCountry2.label" default="Main Transport Mode To Leave Country2" />
		
	</label>
	<g:select name="mainTransportModeToLeaveCountry2" from="${fmp.TransportMode?.values()}" keys="${fmp.TransportMode.values()*.name()}" value="${questionairesInstance?.mainTransportModeToLeaveCountry2?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'transitCountry3', 'error')} ">
	<label for="transitCountry3">
		<g:message code="questionaires.transitCountry3.label" default="Transit Country3" />
		
	</label>
	<g:select id="transitCountry3" name="transitCountry3.id" from="${fmp.Country.list()}" optionKey="id" value="${questionairesInstance?.transitCountry3?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'transitCountry3Location', 'error')} ">
	<label for="transitCountry3Location">
		<g:message code="questionaires.transitCountry3Location.label" default="Transit Country3 Location" />
		
	</label>
	<g:textField name="transitCountry3Location" value="${questionairesInstance?.transitCountry3Location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'departureDateFromCountry3', 'error')} ">
	<label for="departureDateFromCountry3">
		<g:message code="questionaires.departureDateFromCountry3.label" default="Departure Date From Country3" />
		
	</label>
	<g:datePicker name="departureDateFromCountry3" precision="day"  value="${questionairesInstance?.departureDateFromCountry3}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'mainTransportModeToLeaveCountry3', 'error')} ">
	<label for="mainTransportModeToLeaveCountry3">
		<g:message code="questionaires.mainTransportModeToLeaveCountry3.label" default="Main Transport Mode To Leave Country3" />
		
	</label>
	<g:select name="mainTransportModeToLeaveCountry3" from="${fmp.TransportMode?.values()}" keys="${fmp.TransportMode.values()*.name()}" value="${questionairesInstance?.mainTransportModeToLeaveCountry3?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'costOfTheJourney', 'error')} ">
	<label for="costOfTheJourney">
		<g:message code="questionaires.costOfTheJourney.label" default="Cost Of The Journey" />
		
	</label>
	<g:select name="costOfTheJourney" from="${fmp.CostOfJourney?.values()}" keys="${fmp.CostOfJourney.values()*.name()}" value="${questionairesInstance?.costOfTheJourney?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'intendedCountry', 'error')} ">
	<label for="intendedCountry">
		<g:message code="questionaires.intendedCountry.label" default="Intended Country" />
		
	</label>
	<g:select id="intendedCountry" name="intendedCountry.id" from="${fmp.Country.list()}" optionKey="id" value="${questionairesInstance?.intendedCountry?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'doYouHaveRelativesInDestination', 'error')} ">
	<label for="doYouHaveRelativesInDestination">
		<g:message code="questionaires.doYouHaveRelativesInDestination.label" default="Do You Have Relatives In Destination" />
		
	</label>
	<g:select name="doYouHaveRelativesInDestination" from="${fmp.RelativesDestinationCountry?.values()}" keys="${fmp.RelativesDestinationCountry.values()*.name()}" value="${questionairesInstance?.doYouHaveRelativesInDestination?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'howLongRelativesInDestinationCountry', 'error')} ">
	<label for="howLongRelativesInDestinationCountry">
		<g:message code="questionaires.howLongRelativesInDestinationCountry.label" default="How Long Relatives In Destination Country" />
		
	</label>
	<g:select name="howLongRelativesInDestinationCountry" from="${fmp.PeriodRelativesInDestination?.values()}" keys="${fmp.PeriodRelativesInDestination.values()*.name()}" value="${questionairesInstance?.howLongRelativesInDestinationCountry?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionairesInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="questionaires.comments.label" default="Comments" />
		
	</label>
	<g:textField name="comments" value="${questionairesInstance?.comments}"/>

</div>

