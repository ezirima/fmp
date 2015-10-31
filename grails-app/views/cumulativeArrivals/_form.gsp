<%@ page import="fmp.CumulativeArrivals" %>



<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsInstance, field: 'reportDate', 'error')} ">
	<label for="reportDate">
		<g:message code="cumulativeArrivals.reportDate.label" default="Report Date" />
		
	</label>
	<g:datePicker name="reportDate" precision="day"  value="${cumulativeArrivalsInstance?.reportDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsInstance, field: 'ISO3Reporting', 'error')} ">
	<label for="ISO3Reporting">
		<g:message code="cumulativeArrivals.ISO3Reporting.label" default="ISO 3 Reporting" />
		
	</label>
	<g:select id="ISO3Reporting" name="ISO3Reporting.id" from="${fmp.FmPoints.list()}" optionKey="id" value="${cumulativeArrivalsInstance?.ISO3Reporting?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsInstance, field: 'arrivalsCumulative', 'error')} required">
	<label for="arrivalsCumulative">
		<g:message code="cumulativeArrivals.arrivalsCumulative.label" default="Arrivals Cumulative" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivalsCumulative" type="number" min="0" value="${cumulativeArrivalsInstance.arrivalsCumulative}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsInstance, field: 'arrivalsCumulativeMale', 'error')} required">
	<label for="arrivalsCumulativeMale">
		<g:message code="cumulativeArrivals.arrivalsCumulativeMale.label" default="Arrivals Cumulative Male" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivalsCumulativeMale" type="number" min="0" value="${cumulativeArrivalsInstance.arrivalsCumulativeMale}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsInstance, field: 'arrivalsCumulativeFemale', 'error')} required">
	<label for="arrivalsCumulativeFemale">
		<g:message code="cumulativeArrivals.arrivalsCumulativeFemale.label" default="Arrivals Cumulative Female" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivalsCumulativeFemale" type="number" min="0" value="${cumulativeArrivalsInstance.arrivalsCumulativeFemale}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsInstance, field: 'arrivalsCumulativeAM', 'error')} required">
	<label for="arrivalsCumulativeAM">
		<g:message code="cumulativeArrivals.arrivalsCumulativeAM.label" default="Arrivals Cumulative AM" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivalsCumulativeAM" type="number" min="0" value="${cumulativeArrivalsInstance.arrivalsCumulativeAM}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsInstance, field: 'arrivalsCumulativeUAM', 'error')} required">
	<label for="arrivalsCumulativeUAM">
		<g:message code="cumulativeArrivals.arrivalsCumulativeUAM.label" default="Arrivals Cumulative UAM" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivalsCumulativeUAM" type="number" min="0" value="${cumulativeArrivalsInstance.arrivalsCumulativeUAM}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsInstance, field: 'arrivalsCumulativeSea', 'error')} required">
	<label for="arrivalsCumulativeSea">
		<g:message code="cumulativeArrivals.arrivalsCumulativeSea.label" default="Arrivals Cumulative Sea" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivalsCumulativeSea" type="number" min="0" value="${cumulativeArrivalsInstance.arrivalsCumulativeSea}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsInstance, field: 'arrivalsCumulativeAir', 'error')} required">
	<label for="arrivalsCumulativeAir">
		<g:message code="cumulativeArrivals.arrivalsCumulativeAir.label" default="Arrivals Cumulative Air" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivalsCumulativeAir" type="number" min="0" value="${cumulativeArrivalsInstance.arrivalsCumulativeAir}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsInstance, field: 'arrivalsCumulativeLand', 'error')} required">
	<label for="arrivalsCumulativeLand">
		<g:message code="cumulativeArrivals.arrivalsCumulativeLand.label" default="Arrivals Cumulative Land" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="arrivalsCumulativeLand" type="number" min="0" value="${cumulativeArrivalsInstance.arrivalsCumulativeLand}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsInstance, field: 'source', 'error')} ">
	<label for="source">
		<g:message code="cumulativeArrivals.source.label" default="Source" />
		
	</label>
	<g:textField name="source" value="${cumulativeArrivalsInstance?.source}"/>

</div>

