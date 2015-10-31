<%@ page import="fmp.CumulativeArrivalsByNationality" %>



<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsByNationalityInstance, field: 'reportDate', 'error')} ">
	<label for="reportDate">
		<g:message code="cumulativeArrivalsByNationality.reportDate.label" default="Report Date" />
		
	</label>
	<g:datePicker name="reportDate" precision="day"  value="${cumulativeArrivalsByNationalityInstance?.reportDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsByNationalityInstance, field: 'ISO3Origin', 'error')} ">
	<label for="ISO3Origin">
		<g:message code="cumulativeArrivalsByNationality.ISO3Origin.label" default="ISO 3 Origin" />
		
	</label>
	<g:select id="ISO3Origin" name="ISO3Origin.id" from="${fmp.FmPoints.list()}" optionKey="id" value="${cumulativeArrivalsByNationalityInstance?.ISO3Origin?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsByNationalityInstance, field: 'arrivalsCumulative', 'error')} required">
	<label for="arrivalsCumulative">
		<g:message code="cumulativeArrivalsByNationality.arrivalsCumulative.label" default="Arrivals Cumulative" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivalsCumulative" type="number" min="0" value="${cumulativeArrivalsByNationalityInstance.arrivalsCumulative}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsByNationalityInstance, field: 'arrivalsCumulativeMale', 'error')} required">
	<label for="arrivalsCumulativeMale">
		<g:message code="cumulativeArrivalsByNationality.arrivalsCumulativeMale.label" default="Arrivals Cumulative Male" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivalsCumulativeMale" type="number" min="0" value="${cumulativeArrivalsByNationalityInstance.arrivalsCumulativeMale}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsByNationalityInstance, field: 'arrivalsCumulativeFemale', 'error')} required">
	<label for="arrivalsCumulativeFemale">
		<g:message code="cumulativeArrivalsByNationality.arrivalsCumulativeFemale.label" default="Arrivals Cumulative Female" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivalsCumulativeFemale" type="number" min="0" value="${cumulativeArrivalsByNationalityInstance.arrivalsCumulativeFemale}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsByNationalityInstance, field: 'arrivalsCumulativeAM', 'error')} required">
	<label for="arrivalsCumulativeAM">
		<g:message code="cumulativeArrivalsByNationality.arrivalsCumulativeAM.label" default="Arrivals Cumulative AM" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivalsCumulativeAM" type="number" min="0" value="${cumulativeArrivalsByNationalityInstance.arrivalsCumulativeAM}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsByNationalityInstance, field: 'arrivalsCumulativeUAM', 'error')} required">
	<label for="arrivalsCumulativeUAM">
		<g:message code="cumulativeArrivalsByNationality.arrivalsCumulativeUAM.label" default="Arrivals Cumulative UAM" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivalsCumulativeUAM" type="number" min="0" value="${cumulativeArrivalsByNationalityInstance.arrivalsCumulativeUAM}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsByNationalityInstance, field: 'ISO3Reporting', 'error')} ">
	<label for="ISO3Reporting">
		<g:message code="cumulativeArrivalsByNationality.ISO3Reporting.label" default="ISO 3 Reporting" />
		
	</label>
	<g:select id="ISO3Reporting" name="ISO3Reporting.id" from="${fmp.FmPoints.list()}" optionKey="id" value="${cumulativeArrivalsByNationalityInstance?.ISO3Reporting?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsByNationalityInstance, field: 'source', 'error')} ">
	<label for="source">
		<g:message code="cumulativeArrivalsByNationality.source.label" default="Source" />
		
	</label>
	<g:textField name="source" value="${cumulativeArrivalsByNationalityInstance?.source}"/>

</div>

