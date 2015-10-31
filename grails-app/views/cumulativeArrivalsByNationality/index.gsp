
<%@ page import="fmp.CumulativeArrivalsByNationality" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cumulativeArrivalsByNationality.label', default: 'CumulativeArrivalsByNationality')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cumulativeArrivalsByNationality" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cumulativeArrivalsByNationality" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="reportDate" title="${message(code: 'cumulativeArrivalsByNationality.reportDate.label', default: 'Report Date')}" />
					
						<th><g:message code="cumulativeArrivalsByNationality.ISO3Origin.label" default="ISO 3 Origin" /></th>
					
						<g:sortableColumn property="arrivalsCumulative" title="${message(code: 'cumulativeArrivalsByNationality.arrivalsCumulative.label', default: 'Arrivals Cumulative')}" />
					
						<g:sortableColumn property="arrivalsCumulativeMale" title="${message(code: 'cumulativeArrivalsByNationality.arrivalsCumulativeMale.label', default: 'Arrivals Cumulative Male')}" />
					
						<g:sortableColumn property="arrivalsCumulativeFemale" title="${message(code: 'cumulativeArrivalsByNationality.arrivalsCumulativeFemale.label', default: 'Arrivals Cumulative Female')}" />
					
						<g:sortableColumn property="arrivalsCumulativeAM" title="${message(code: 'cumulativeArrivalsByNationality.arrivalsCumulativeAM.label', default: 'Arrivals Cumulative AM')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cumulativeArrivalsByNationalityInstanceList}" status="i" var="cumulativeArrivalsByNationalityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cumulativeArrivalsByNationalityInstance.id}">${fieldValue(bean: cumulativeArrivalsByNationalityInstance, field: "reportDate")}</g:link></td>
					
						<td>${fieldValue(bean: cumulativeArrivalsByNationalityInstance, field: "ISO3Origin")}</td>
					
						<td>${fieldValue(bean: cumulativeArrivalsByNationalityInstance, field: "arrivalsCumulative")}</td>
					
						<td>${fieldValue(bean: cumulativeArrivalsByNationalityInstance, field: "arrivalsCumulativeMale")}</td>
					
						<td>${fieldValue(bean: cumulativeArrivalsByNationalityInstance, field: "arrivalsCumulativeFemale")}</td>
					
						<td>${fieldValue(bean: cumulativeArrivalsByNationalityInstance, field: "arrivalsCumulativeAM")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cumulativeArrivalsByNationalityInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
