
<%@ page import="fmp.TransfersDepartures" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transfersDepartures.label', default: 'TransfersDepartures')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-transfersDepartures" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-transfersDepartures" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="transfersDepartures.fmPoint.label" default="Fm Point" /></th>
					
						<th><g:message code="transfersDepartures.FMUpdate.label" default="FMU pdate" /></th>
					
						<g:sortableColumn property="nationality" title="${message(code: 'transfersDepartures.nationality.label', default: 'Nationality')}" />
					
						<g:sortableColumn property="individuals" title="${message(code: 'transfersDepartures.individuals.label', default: 'Individuals')}" />
					
						<g:sortableColumn property="males" title="${message(code: 'transfersDepartures.males.label', default: 'Males')}" />
					
						<g:sortableColumn property="females" title="${message(code: 'transfersDepartures.females.label', default: 'Females')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${transfersDeparturesInstanceList}" status="i" var="transfersDeparturesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${transfersDeparturesInstance.id}">${fieldValue(bean: transfersDeparturesInstance, field: "fmPoint")}</g:link></td>
					
						<td>${fieldValue(bean: transfersDeparturesInstance, field: "FMUpdate")}</td>
					
						<td>${fieldValue(bean: transfersDeparturesInstance, field: "nationality")}</td>
					
						<td>${fieldValue(bean: transfersDeparturesInstance, field: "individuals")}</td>
					
						<td>${fieldValue(bean: transfersDeparturesInstance, field: "males")}</td>
					
						<td>${fieldValue(bean: transfersDeparturesInstance, field: "females")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${transfersDeparturesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
