<%@ page import="fmp.TransfersDepartures" %>



<div class="fieldcontain ${hasErrors(bean: transfersDeparturesInstance, field: 'fmPoint', 'error')} ">
	<label for="fmPoint">
		<g:message code="transfersDepartures.fmPoint.label" default="Fm Point" />
		
	</label>
	<g:select id="fmPoint" name="fmPoint.id" from="${fmp.FmPoints.list()}" optionKey="id" value="${transfersDeparturesInstance?.fmPoint?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transfersDeparturesInstance, field: 'FMUpdate', 'error')} ">
	<label for="FMUpdate">
		<g:message code="transfersDepartures.FMUpdate.label" default="FMU pdate" />
		
	</label>
	<g:select id="FMUpdate" name="FMUpdate.id" from="${fmp.FmpUpdate.list()}" optionKey="id" value="${transfersDeparturesInstance?.FMUpdate?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transfersDeparturesInstance, field: 'nationality', 'error')} ">
	<label for="nationality">
		<g:message code="transfersDepartures.nationality.label" default="Nationality" />
		
	</label>
	<g:textField name="nationality" value="${transfersDeparturesInstance?.nationality}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transfersDeparturesInstance, field: 'individuals', 'error')} required">
	<label for="individuals">
		<g:message code="transfersDepartures.individuals.label" default="Individuals" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="individuals" type="number" min="0" value="${transfersDeparturesInstance.individuals}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: transfersDeparturesInstance, field: 'males', 'error')} required">
	<label for="males">
		<g:message code="transfersDepartures.males.label" default="Males" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="males" type="number" min="0" value="${transfersDeparturesInstance.males}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: transfersDeparturesInstance, field: 'females', 'error')} required">
	<label for="females">
		<g:message code="transfersDepartures.females.label" default="Females" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="females" type="number" min="0" value="${transfersDeparturesInstance.females}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: transfersDeparturesInstance, field: 'minors', 'error')} required">
	<label for="minors">
		<g:message code="transfersDepartures.minors.label" default="Minors" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="minors" type="number" min="0" value="${transfersDeparturesInstance.minors}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: transfersDeparturesInstance, field: 'UAMs', 'error')} required">
	<label for="UAMs">
		<g:message code="transfersDepartures.UAMs.label" default="UAM s" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="UAMs" type="number" min="0" value="${transfersDeparturesInstance.UAMs}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: transfersDeparturesInstance, field: 'nextLocation', 'error')} ">
	<label for="nextLocation">
		<g:message code="transfersDepartures.nextLocation.label" default="Next Location" />
		
	</label>
	<g:textField name="nextLocation" value="${transfersDeparturesInstance?.nextLocation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transfersDeparturesInstance, field: 'relocated', 'error')} ">
	<label for="relocated">
		<g:message code="transfersDepartures.relocated.label" default="Relocated" />
		
	</label>
	<g:textField name="relocated" value="${transfersDeparturesInstance?.relocated}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transfersDeparturesInstance, field: 'commentsPresence', 'error')} ">
	<label for="commentsPresence">
		<g:message code="transfersDepartures.commentsPresence.label" default="Comments Presence" />
		
	</label>
	<g:textField name="commentsPresence" value="${transfersDeparturesInstance?.commentsPresence}"/>

</div>

