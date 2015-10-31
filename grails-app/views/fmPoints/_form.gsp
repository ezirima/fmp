<%@ page import="fmp.FmPoints" %>



<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'fmPointName', 'error')} ">
	<label for="fmPointName">
		<g:message code="fmPoints.fmPointName.label" default="Fm Point Name" />
		
	</label>
	<g:textField name="fmPointName" value="${fmPointsInstance?.fmPointName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'dateOfSurvey', 'error')} ">
	<label for="dateOfSurvey">
		<g:message code="fmPoints.dateOfSurvey.label" default="Date Of Survey" />
		
	</label>
	<g:datePicker name="dateOfSurvey" precision="day"  value="${fmPointsInstance?.dateOfSurvey}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'dataCollector', 'error')} required">
	<label for="dataCollector">
		<g:message code="fmPoints.dataCollector.label" default="Data Collector" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dataCollector" required="" value="${fmPointsInstance?.dataCollector}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="fmPoints.country.label" default="Country" />
		
	</label>
	<g:select id="country" name="country.id" from="${fmp.Country.list()}" optionKey="id" value="${fmPointsInstance?.country?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'region', 'error')} ">
	<label for="region">
		<g:message code="fmPoints.region.label" default="Region" />
		
	</label>
	<g:textField name="region" value="${fmPointsInstance?.region}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'metropolitanProvince', 'error')} required">
	<label for="metropolitanProvince">
		<g:message code="fmPoints.metropolitanProvince.label" default="Metropolitan Province" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="metropolitanProvince" required="" value="${fmPointsInstance?.metropolitanProvince}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'municipality', 'error')} required">
	<label for="municipality">
		<g:message code="fmPoints.municipality.label" default="Municipality" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="municipality" required="" value="${fmPointsInstance?.municipality}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'locationName', 'error')} ">
	<label for="locationName">
		<g:message code="fmPoints.locationName.label" default="Location Name" />
		
	</label>
	<g:textField name="locationName" value="${fmPointsInstance?.locationName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'locationType', 'error')} required">
	<label for="locationType">
		<g:message code="fmPoints.locationType.label" default="Location Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="locationType" name="locationType.id" from="${fmp.LocationType.list()}" optionKey="id" required="" value="${fmPointsInstance?.locationType?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'locationCode', 'error')} required">
	<label for="locationCode">
		<g:message code="fmPoints.locationCode.label" default="Location Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="locationCode" required="" value="${fmPointsInstance?.locationCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'gpsLatitude', 'error')} required">
	<label for="gpsLatitude">
		<g:message code="fmPoints.gpsLatitude.label" default="Gps Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="gpsLatitude" required="" value="${fmPointsInstance?.gpsLatitude}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'gpsLongitude', 'error')} required">
	<label for="gpsLongitude">
		<g:message code="fmPoints.gpsLongitude.label" default="Gps Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="gpsLongitude" required="" value="${fmPointsInstance?.gpsLongitude}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'nearestTown', 'error')} required">
	<label for="nearestTown">
		<g:message code="fmPoints.nearestTown.label" default="Nearest Town" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nearestTown" required="" value="${fmPointsInstance?.nearestTown}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'capacity', 'error')} required">
	<label for="capacity">
		<g:message code="fmPoints.capacity.label" default="Capacity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="capacity" type="number" min="0" value="${fmPointsInstance.capacity}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'arrivingTransport', 'error')} required">
	<label for="arrivingTransport">
		<g:message code="fmPoints.arrivingTransport.label" default="Arriving Transport" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="arrivingTransport" from="${fmp.TransportMode?.values()}" keys="${fmp.TransportMode.values()*.name()}" required="" value="${fmPointsInstance?.arrivingTransport?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'departingTransport', 'error')} required">
	<label for="departingTransport">
		<g:message code="fmPoints.departingTransport.label" default="Departing Transport" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="departingTransport" from="${fmp.TransportMode?.values()}" keys="${fmp.TransportMode.values()*.name()}" required="" value="${fmPointsInstance?.departingTransport?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'nationalAuthPresence', 'error')} ">
	<label for="nationalAuthPresence">
		<g:message code="fmPoints.nationalAuthPresence.label" default="National Auth Presence" />
		
	</label>
	<g:checkBox name="nationalAuthPresence" value="${fmPointsInstance?.nationalAuthPresence}" />

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'humanitarianActorsPresence', 'error')} ">
	<label for="humanitarianActorsPresence">
		<g:message code="fmPoints.humanitarianActorsPresence.label" default="Humanitarian Actors Presence" />
		
	</label>
	<g:checkBox name="humanitarianActorsPresence" value="${fmPointsInstance?.humanitarianActorsPresence}" />

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'accesIom', 'error')} ">
	<label for="accesIom">
		<g:message code="fmPoints.accesIom.label" default="Acces Iom" />
		
	</label>
	<g:checkBox name="accesIom" value="${fmPointsInstance?.accesIom}" />

</div>

<div class="fieldcontain ${hasErrors(bean: fmPointsInstance, field: 'comments', 'error')} required">
	<label for="comments">
		<g:message code="fmPoints.comments.label" default="Comments" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="comments" required="" value="${fmPointsInstance?.comments}"/>

</div>

