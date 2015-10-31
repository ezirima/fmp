
<%@ page import="fmp.FmpUpdate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fmpUpdate.label', default: 'FmpUpdate')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-fmpUpdate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-fmpUpdate" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="fmpUpdate.fmPoint.label" default="Fm Point" /></th>
					
						<g:sortableColumn property="fmUpdateID" title="${message(code: 'fmpUpdate.fmUpdateID.label', default: 'Fm Update ID')}" />
					
						<g:sortableColumn property="updateType" title="${message(code: 'fmpUpdate.updateType.label', default: 'Update Type')}" />
					
						<g:sortableColumn property="dateOfSurvey" title="${message(code: 'fmpUpdate.dateOfSurvey.label', default: 'Date Of Survey')}" />
					
						<g:sortableColumn property="dataCollector" title="${message(code: 'fmpUpdate.dataCollector.label', default: 'Data Collector')}" />
					
						<g:sortableColumn property="locationName" title="${message(code: 'fmpUpdate.locationName.label', default: 'Location Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${fmpUpdateInstanceList}" status="i" var="fmpUpdateInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${fmpUpdateInstance.id}">${fieldValue(bean: fmpUpdateInstance, field: "fmPoint")}</g:link></td>
					
						<td>${fieldValue(bean: fmpUpdateInstance, field: "fmUpdateID")}</td>
					
						<td>${fieldValue(bean: fmpUpdateInstance, field: "updateType")}</td>
					
						<td><g:formatDate date="${fmpUpdateInstance.dateOfSurvey}" /></td>
					
						<td>${fieldValue(bean: fmpUpdateInstance, field: "dataCollector")}</td>
					
						<td>${fieldValue(bean: fmpUpdateInstance, field: "locationName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${fmpUpdateInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
