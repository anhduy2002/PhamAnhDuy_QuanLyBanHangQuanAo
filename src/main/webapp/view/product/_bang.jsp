<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table class="content-table col-12" style="text-align: center;">
<thead>
	<tr class="active">
		<th scope="col">Product ID</th>
		<th scope="col">Product name</th>
		<th scope="col">Product price</th>
		<th scope="col">Product image</th>	
		<th scope="col">Category</th>
		<th>&nbsp;</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="item" items="${items}">
		<tr class="active-row">
			<td class="align-middle">${item.id}</td>
			<td class="align-middle">${item.name}</td>
			<td class="align-middle">${item.price}</td>
			<td class="align-middle">${item.image}</td>
			<td class="align-middle">${item.category.id}</td>
			<td class="align-middle">
				<a style="font-weight: bold;
	color: #20B2AA;" class="btn btn-warning apro" href="/product/edit/${item.id}">Edit</a>
				<a style="font-weight: bold;
	color: #20B2AA;" class="btn btn-danger apro" href="/product/delete/${item.id}">Delete</a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>