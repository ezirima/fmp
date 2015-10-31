
<%@ page import="fmp.Questionaires" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'questionaires.label', default: 'Questionaires')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-questionaires" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-questionaires" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dateOfSurvey" title="${message(code: 'questionaires.dateOfSurvey.label', default: 'Date Of Survey')}" />
					
						<g:sortableColumn property="dataCollector" title="${message(code: 'questionaires.dataCollector.label', default: 'Data Collector')}" />
					
						<th><g:message code="questionaires.countryOfSurvey.label" default="Country Of Survey" /></th>
					
						<g:sortableColumn property="locationName" title="${message(code: 'questionaires.locationName.label', default: 'Location Name')}" />
					
						<g:sortableColumn property="locationCode" title="${message(code: 'questionaires.locationCode.label', default: 'Location Code')}" />
					
						<th><g:message code="questionaires.flowMonitoringPoint.label" default="Flow Monitoring Point" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${questionairesInstanceList}" status="i" var="questionairesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${questionairesInstance.id}">${fieldValue(bean: questionairesInstance, field: "dateOfSurvey")}</g:link></td>
					
						<td>${fieldValue(bean: questionairesInstance, field: "dataCollector")}</td>
					
						<td>${fieldValue(bean: questionairesInstance, field: "countryOfSurvey")}</td>
					
						<td>${fieldValue(bean: questionairesInstance, field: "locationName")}</td>
					
						<td>${fieldValue(bean: questionairesInstance, field: "locationCode")}</td>
					
						<td>${fieldValue(bean: questionairesInstance, field: "flowMonitoringPoint")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${questionairesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
