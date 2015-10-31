<%@ page import="fmp.CumulativeArrivalsSummary" %>



<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsSummaryInstance, field: 'fromDate', 'error')} ">
	<label for="fromDate">
		<g:message code="cumulativeArrivalsSummary.fromDate.label" default="From Date" />
		
	</label>
	<g:datePicker name="fromDate" precision="day"  value="${cumulativeArrivalsSummaryInstance?.fromDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsSummaryInstance, field: 'toDate', 'error')} ">
	<label for="toDate">
		<g:message code="cumulativeArrivalsSummary.toDate.label" default="To Date" />
		
	</label>
	<g:datePicker name="toDate" precision="day"  value="${cumulativeArrivalsSummaryInstance?.toDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsSummaryInstance, field: 'fromDateCompare', 'error')} ">
	<label for="fromDateCompare">
		<g:message code="cumulativeArrivalsSummary.fromDateCompare.label" default="From Date Compare" />
		
	</label>
	<g:datePicker name="fromDateCompare" precision="day"  value="${cumulativeArrivalsSummaryInstance?.fromDateCompare}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsSummaryInstance, field: 'toDateCompare', 'error')} ">
	<label for="toDateCompare">
		<g:message code="cumulativeArrivalsSummary.toDateCompare.label" default="To Date Compare" />
		
	</label>
	<g:datePicker name="toDateCompare" precision="day"  value="${cumulativeArrivalsSummaryInstance?.toDateCompare}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsSummaryInstance, field: 'ISO3', 'error')} ">
	<label for="ISO3">
		<g:message code="cumulativeArrivalsSummary.ISO3.label" default="ISO 3" />
		
	</label>
	<g:select id="ISO3" name="ISO3.id" from="${fmp.FmPoints.list()}" optionKey="id" value="${cumulativeArrivalsSummaryInstance?.ISO3?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsSummaryInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="cumulativeArrivalsSummary.total.label" default="Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="total" type="number" min="0" value="${cumulativeArrivalsSummaryInstance.total}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsSummaryInstance, field: 'currentWeek', 'error')} required">
	<label for="currentWeek">
		<g:message code="cumulativeArrivalsSummary.currentWeek.label" default="Current Week" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="currentWeek" type="number" min="0" value="${cumulativeArrivalsSummaryInstance.currentWeek}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsSummaryInstance, field: 'previousWeek', 'error')} required">
	<label for="previousWeek">
		<g:message code="cumulativeArrivalsSummary.previousWeek.label" default="Previous Week" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="previousWeek" type="number" min="0" value="${cumulativeArrivalsSummaryInstance.previousWeek}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsSummaryInstance, field: 'delta', 'error')} required">
	<label for="delta">
		<g:message code="cumulativeArrivalsSummary.delta.label" default="Delta" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="delta" type="number" min="0" value="${cumulativeArrivalsSummaryInstance.delta}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cumulativeArrivalsSummaryInstance, field: 'percentVariation', 'error')} required">
	<label for="percentVariation">
		<g:message code="cumulativeArrivalsSummary.percentVariation.label" default="Percent Variation" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="percentVariation" value="${fieldValue(bean: cumulativeArrivalsSummaryInstance, field: 'percentVariation')}" required=""/>

</div>

