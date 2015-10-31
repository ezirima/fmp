
<%@ page import="fmp.FmPoints" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fmPoints.label', default: 'FmPoints')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-fmPoints" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-fmPoints" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fmPointName" title="${message(code: 'fmPoints.fmPointName.label', default: 'Fm Point Name')}" />
					
						<g:sortableColumn property="dateOfSurvey" title="${message(code: 'fmPoints.dateOfSurvey.label', default: 'Date Of Survey')}" />
					
						<g:sortableColumn property="dataCollector" title="${message(code: 'fmPoints.dataCollector.label', default: 'Data Collector')}" />
					
						<th><g:message code="fmPoints.country.label" default="Country" /></th>
					
						<g:sortableColumn property="region" title="${message(code: 'fmPoints.region.label', default: 'Region')}" />
					
						<g:sortableColumn property="metropolitanProvince" title="${message(code: 'fmPoints.metropolitanProvince.label', default: 'Metropolitan Province')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${fmPointsInstanceList}" status="i" var="fmPointsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${fmPointsInstance.id}">${fieldValue(bean: fmPointsInstance, field: "fmPointName")}</g:link></td>
					
						<td><g:formatDate date="${fmPointsInstance.dateOfSurvey}" /></td>
					
						<td>${fieldValue(bean: fmPointsInstance, field: "dataCollector")}</td>
					
						<td>${fieldValue(bean: fmPointsInstance, field: "country")}</td>
					
						<td>${fieldValue(bean: fmPointsInstance, field: "region")}</td>
					
						<td>${fieldValue(bean: fmPointsInstance, field: "metropolitanProvince")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${fmPointsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
