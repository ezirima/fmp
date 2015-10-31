<%@ page import="fmp.Presence" %>



<div class="fieldcontain ${hasErrors(bean: presenceInstance, field: 'fmPoint', 'error')} required">
	<label for="fmPoint">
		<g:message code="presence.fmPoint.label" default="Fm Point" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fmPoint" name="fmPoint.id" from="${fmp.FmPoints.list()}" optionKey="id" required="" value="${presenceInstance?.fmPoint?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: presenceInstance, field: 'FMUpdate', 'error')} required">
	<label for="FMUpdate">
		<g:message code="presence.FMUpdate.label" default="FMU pdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="FMUpdate" name="FMUpdate.id" from="${fmp.FmpUpdate.list()}" optionKey="id" required="" value="${presenceInstance?.FMUpdate?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: presenceInstance, field: 'nationality', 'error')} ">
	<label for="nationality">
		<g:message code="presence.nationality.label" default="Nationality" />
		
	</label>
	<g:textField name="nationality" value="${presenceInstance?.nationality}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: presenceInstance, field: 'individuals', 'error')} required">
	<label for="individuals">
		<g:message code="presence.individuals.label" default="Individuals" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="individuals" type="number" min="0" value="${presenceInstance.individuals}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: presenceInstance, field: 'males', 'error')} required">
	<label for="males">
		<g:message code="presence.males.label" default="Males" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="males" type="number" min="0" value="${presenceInstance.males}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: presenceInstance, field: 'females', 'error')} required">
	<label for="females">
		<g:message code="presence.females.label" default="Females" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="females" type="number" min="0" value="${presenceInstance.females}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: presenceInstance, field: 'minors', 'error')} required">
	<label for="minors">
		<g:message code="presence.minors.label" default="Minors" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="minors" type="number" min="0" value="${presenceInstance.minors}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: presenceInstance, field: 'UAMs', 'error')} required">
	<label for="UAMs">
		<g:message code="presence.UAMs.label" default="UAM s" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="UAMs" type="number" min="0" value="${presenceInstance.UAMs}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: presenceInstance, field: 'fingerPrinted', 'error')} ">
	<label for="fingerPrinted">
		<g:message code="presence.fingerPrinted.label" default="Finger Printed" />
		
	</label>
	<g:checkBox name="fingerPrinted" value="${presenceInstance?.fingerPrinted}" />

</div>

<div class="fieldcontain ${hasErrors(bean: presenceInstance, field: 'averageLengthOfStay', 'error')} required">
	<label for="averageLengthOfStay">
		<g:message code="presence.averageLengthOfStay.label" default="Average Length Of Stay" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="averageLengthOfStay" type="number" min="0" value="${presenceInstance.averageLengthOfStay}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: presenceInstance, field: 'commentsPresence', 'error')} ">
	<label for="commentsPresence">
		<g:message code="presence.commentsPresence.label" default="Comments Presence" />
		
	</label>
	<g:textField name="commentsPresence" value="${presenceInstance?.commentsPresence}"/>

</div>

