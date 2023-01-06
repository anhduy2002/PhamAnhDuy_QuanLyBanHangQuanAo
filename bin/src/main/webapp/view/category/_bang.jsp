<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table class="content-table col-12">
<thead>
	<tr class="active">
		<th scope="col">Category ID</th>
		<th scope="col">Category name</th>
		<th>&nbsp;</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="item" items="${items}">
		<tr class="active-row">
			<td class="align-middle">${item.id}</td>
			<td class="align-middle">${item.name}</td>
			<td class="align-middle">
			<a style="font-weight: bold;
	color: #20B2AA;" class="btn btn-warning acategory" href="/category/edit/${item.id}">Edit</a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>