
<%@ page import="fmp.CumulativeArrivalsSummary" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cumulativeArrivalsSummary.label', default: 'CumulativeArrivalsSummary')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cumulativeArrivalsSummary" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cumulativeArrivalsSummary" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fromDate" title="${message(code: 'cumulativeArrivalsSummary.fromDate.label', default: 'From Date')}" />
					
						<g:sortableColumn property="toDate" title="${message(code: 'cumulativeArrivalsSummary.toDate.label', default: 'To Date')}" />
					
						<g:sortableColumn property="fromDateCompare" title="${message(code: 'cumulativeArrivalsSummary.fromDateCompare.label', default: 'From Date Compare')}" />
					
						<g:sortableColumn property="toDateCompare" title="${message(code: 'cumulativeArrivalsSummary.toDateCompare.label', default: 'To Date Compare')}" />
					
						<th><g:message code="cumulativeArrivalsSummary.ISO3.label" default="ISO 3" /></th>
					
						<g:sortableColumn property="total" title="${message(code: 'cumulativeArrivalsSummary.total.label', default: 'Total')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cumulativeArrivalsSummaryInstanceList}" status="i" var="cumulativeArrivalsSummaryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cumulativeArrivalsSummaryInstance.id}">${fieldValue(bean: cumulativeArrivalsSummaryInstance, field: "fromDate")}</g:link></td>
					
						<td><g:formatDate date="${cumulativeArrivalsSummaryInstance.toDate}" /></td>
					
						<td><g:formatDate date="${cumulativeArrivalsSummaryInstance.fromDateCompare}" /></td>
					
						<td><g:formatDate date="${cumulativeArrivalsSummaryInstance.toDateCompare}" /></td>
					
						<td>${fieldValue(bean: cumulativeArrivalsSummaryInstance, field: "ISO3")}</td>
					
						<td>${fieldValue(bean: cumulativeArrivalsSummaryInstance, field: "total")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cumulativeArrivalsSummaryInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
