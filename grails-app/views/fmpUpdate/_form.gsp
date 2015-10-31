<%@ page import="fmp.FmpUpdate" %>



<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'fmPoint', 'error')} required">
	<label for="fmPoint">
		<g:message code="fmpUpdate.fmPoint.label" default="Fm Point" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fmPoint" name="fmPoint.id" from="${fmp.FmPoints.list()}" optionKey="id" required="" value="${fmpUpdateInstance?.fmPoint?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'fmUpdateID', 'error')} ">
	<label for="fmUpdateID">
		<g:message code="fmpUpdate.fmUpdateID.label" default="Fm Update ID" />
		
	</label>
	<g:textField name="fmUpdateID" value="${fmpUpdateInstance?.fmUpdateID}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'updateType', 'error')} required">
	<label for="updateType">
		<g:message code="fmpUpdate.updateType.label" default="Update Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="updateType" from="${fmp.UpdateType?.values()}" keys="${fmp.UpdateType.values()*.name()}" required="" value="${fmpUpdateInstance?.updateType?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'dateOfSurvey', 'error')} ">
	<label for="dateOfSurvey">
		<g:message code="fmpUpdate.dateOfSurvey.label" default="Date Of Survey" />
		
	</label>
	<g:datePicker name="dateOfSurvey" precision="day"  value="${fmpUpdateInstance?.dateOfSurvey}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'dataCollector', 'error')} required">
	<label for="dataCollector">
		<g:message code="fmpUpdate.dataCollector.label" default="Data Collector" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dataCollector" required="" value="${fmpUpdateInstance?.dataCollector}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'locationName', 'error')} ">
	<label for="locationName">
		<g:message code="fmpUpdate.locationName.label" default="Location Name" />
		
	</label>
	<g:textField name="locationName" value="${fmpUpdateInstance?.locationName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'locationCode', 'error')} ">
	<label for="locationCode">
		<g:message code="fmpUpdate.locationCode.label" default="Location Code" />
		
	</label>
	<g:textField name="locationCode" value="${fmpUpdateInstance?.locationCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="fmpUpdate.status.label" default="Status" />
		
	</label>
	<g:select name="status" from="${fmp.ActivityStatus?.values()}" keys="${fmp.ActivityStatus.values()*.name()}" value="${fmpUpdateInstance?.status?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'hotspotApproach', 'error')} ">
	<label for="hotspotApproach">
		<g:message code="fmpUpdate.hotspotApproach.label" default="Hotspot Approach" />
		
	</label>
	<g:checkBox name="hotspotApproach" value="${fmpUpdateInstance?.hotspotApproach}" />

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'flowMonitoringSurveyOngoing', 'error')} ">
	<label for="flowMonitoringSurveyOngoing">
		<g:message code="fmpUpdate.flowMonitoringSurveyOngoing.label" default="Flow Monitoring Survey Ongoing" />
		
	</label>
	<g:checkBox name="flowMonitoringSurveyOngoing" value="${fmpUpdateInstance?.flowMonitoringSurveyOngoing}" />

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'commentsOnSituation', 'error')} ">
	<label for="commentsOnSituation">
		<g:message code="fmpUpdate.commentsOnSituation.label" default="Comments On Situation" />
		
	</label>
	<g:textField name="commentsOnSituation" value="${fmpUpdateInstance?.commentsOnSituation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'sourceArrivals', 'error')} ">
	<label for="sourceArrivals">
		<g:message code="fmpUpdate.sourceArrivals.label" default="Source Arrivals" />
		
	</label>
	<g:textField name="sourceArrivals" value="${fmpUpdateInstance?.sourceArrivals}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'externalUse', 'error')} ">
	<label for="externalUse">
		<g:message code="fmpUpdate.externalUse.label" default="External Use" />
		
	</label>
	<g:checkBox name="externalUse" value="${fmpUpdateInstance?.externalUse}" />

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'vehiclesVesselsLandings', 'error')} ">
	<label for="vehiclesVesselsLandings">
		<g:message code="fmpUpdate.vehiclesVesselsLandings.label" default="Vehicles Vessels Landings" />
		
	</label>
	<g:textField name="vehiclesVesselsLandings" value="${fmpUpdateInstance?.vehiclesVesselsLandings}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'arrivals', 'error')} required">
	<label for="arrivals">
		<g:message code="fmpUpdate.arrivals.label" default="Arrivals" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivals" type="number" min="0" value="${fmpUpdateInstance.arrivals}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'males', 'error')} required">
	<label for="males">
		<g:message code="fmpUpdate.males.label" default="Males" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="males" type="number" min="0" value="${fmpUpdateInstance.males}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'females', 'error')} required">
	<label for="females">
		<g:message code="fmpUpdate.females.label" default="Females" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="females" type="number" min="0" value="${fmpUpdateInstance.females}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'minors', 'error')} required">
	<label for="minors">
		<g:message code="fmpUpdate.minors.label" default="Minors" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="minors" type="number" min="0" value="${fmpUpdateInstance.minors}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'UAMs', 'error')} required">
	<label for="UAMs">
		<g:message code="fmpUpdate.UAMs.label" default="UAM s" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="UAMs" type="number" min="0" value="${fmpUpdateInstance.UAMs}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'sourceVoTs', 'error')} ">
	<label for="sourceVoTs">
		<g:message code="fmpUpdate.sourceVoTs.label" default="Source Vo Ts" />
		
	</label>
	<g:textField name="sourceVoTs" value="${fmpUpdateInstance?.sourceVoTs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'suspectedVoTs', 'error')} required">
	<label for="suspectedVoTs">
		<g:message code="fmpUpdate.suspectedVoTs.label" default="Suspected Vo Ts" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="suspectedVoTs" type="number" min="0" value="${fmpUpdateInstance.suspectedVoTs}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'identifiedVoTs', 'error')} required">
	<label for="identifiedVoTs">
		<g:message code="fmpUpdate.identifiedVoTs.label" default="Identified Vo Ts" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="identifiedVoTs" type="number" min="0" value="${fmpUpdateInstance.identifiedVoTs}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'rescuedBy', 'error')} ">
	<label for="rescuedBy">
		<g:message code="fmpUpdate.rescuedBy.label" default="Rescued By" />
		
	</label>
	<g:textField name="rescuedBy" value="${fmpUpdateInstance?.rescuedBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'deadMissing', 'error')} required">
	<label for="deadMissing">
		<g:message code="fmpUpdate.deadMissing.label" default="Dead Missing" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="deadMissing" type="number" min="0" value="${fmpUpdateInstance.deadMissing}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'nationalityArrivals1', 'error')} ">
	<label for="nationalityArrivals1">
		<g:message code="fmpUpdate.nationalityArrivals1.label" default="Nationality Arrivals1" />
		
	</label>
	<g:textField name="nationalityArrivals1" value="${fmpUpdateInstance?.nationalityArrivals1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'nationalityArrivals2', 'error')} ">
	<label for="nationalityArrivals2">
		<g:message code="fmpUpdate.nationalityArrivals2.label" default="Nationality Arrivals2" />
		
	</label>
	<g:textField name="nationalityArrivals2" value="${fmpUpdateInstance?.nationalityArrivals2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'nationalityArrivals3', 'error')} ">
	<label for="nationalityArrivals3">
		<g:message code="fmpUpdate.nationalityArrivals3.label" default="Nationality Arrivals3" />
		
	</label>
	<g:textField name="nationalityArrivals3" value="${fmpUpdateInstance?.nationalityArrivals3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'countryOfLastDeparture1', 'error')} ">
	<label for="countryOfLastDeparture1">
		<g:message code="fmpUpdate.countryOfLastDeparture1.label" default="Country Of Last Departure1" />
		
	</label>
	<g:textField name="countryOfLastDeparture1" value="${fmpUpdateInstance?.countryOfLastDeparture1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'countryOfLastDeparture2', 'error')} ">
	<label for="countryOfLastDeparture2">
		<g:message code="fmpUpdate.countryOfLastDeparture2.label" default="Country Of Last Departure2" />
		
	</label>
	<g:textField name="countryOfLastDeparture2" value="${fmpUpdateInstance?.countryOfLastDeparture2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'locationOfLastDeparture1', 'error')} ">
	<label for="locationOfLastDeparture1">
		<g:message code="fmpUpdate.locationOfLastDeparture1.label" default="Location Of Last Departure1" />
		
	</label>
	<g:textField name="locationOfLastDeparture1" value="${fmpUpdateInstance?.locationOfLastDeparture1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'locationOfLastDeparture2', 'error')} ">
	<label for="locationOfLastDeparture2">
		<g:message code="fmpUpdate.locationOfLastDeparture2.label" default="Location Of Last Departure2" />
		
	</label>
	<g:textField name="locationOfLastDeparture2" value="${fmpUpdateInstance?.locationOfLastDeparture2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmpUpdateInstance, field: 'commentsOnArrivals', 'error')} ">
	<label for="commentsOnArrivals">
		<g:message code="fmpUpdate.commentsOnArrivals.label" default="Comments On Arrivals" />
		
	</label>
	<g:textField name="commentsOnArrivals" value="${fmpUpdateInstance?.commentsOnArrivals}"/>

</div>

