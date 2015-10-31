
<%@ page import="fmp.CumulativeArrivals" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cumulativeArrivals.label', default: 'CumulativeArrivals')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cumulativeArrivals" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cumulativeArrivals" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="reportDate" title="${message(code: 'cumulativeArrivals.reportDate.label', default: 'Report Date')}" />
					
						<th><g:message code="cumulativeArrivals.ISO3Reporting.label" default="ISO 3 Reporting" /></th>
					
						<g:sortableColumn property="arrivalsCumulative" title="${message(code: 'cumulativeArrivals.arrivalsCumulative.label', default: 'Arrivals Cumulative')}" />
					
						<g:sortableColumn property="arrivalsCumulativeMale" title="${message(code: 'cumulativeArrivals.arrivalsCumulativeMale.label', default: 'Arrivals Cumulative Male')}" />
					
						<g:sortableColumn property="arrivalsCumulativeFemale" title="${message(code: 'cumulativeArrivals.arrivalsCumulativeFemale.label', default: 'Arrivals Cumulative Female')}" />
					
						<g:sortableColumn property="arrivalsCumulativeAM" title="${message(code: 'cumulativeArrivals.arrivalsCumulativeAM.label', default: 'Arrivals Cumulative AM')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cumulativeArrivalsInstanceList}" status="i" var="cumulativeArrivalsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cumulativeArrivalsInstance.id}">${fieldValue(bean: cumulativeArrivalsInstance, field: "reportDate")}</g:link></td>
					
						<td>${fieldValue(bean: cumulativeArrivalsInstance, field: "ISO3Reporting")}</td>
					
						<td>${fieldValue(bean: cumulativeArrivalsInstance, field: "arrivalsCumulative")}</td>
					
						<td>${fieldValue(bean: cumulativeArrivalsInstance, field: "arrivalsCumulativeMale")}</td>
					
						<td>${fieldValue(bean: cumulativeArrivalsInstance, field: "arrivalsCumulativeFemale")}</td>
					
						<td>${fieldValue(bean: cumulativeArrivalsInstance, field: "arrivalsCumulativeAM")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cumulativeArrivalsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
