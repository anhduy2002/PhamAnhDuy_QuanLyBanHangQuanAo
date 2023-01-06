<%@ page pageEncoding="utf-8" %>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

		<h3 style="text-align: center;">TỒN KHO THEO LOẠI</h3>
		<table class="content-table col-12" style="text-align: left;">
			<tr class="active">
				<th scope="col">Loại hàng</th>
				<th scope="col">Tổng giá</th>
				<th scope="col">Số sản phẩm</th>
			</tr>
			<c:forEach var="item" items="${items}">
				<tr class="active-row">
					<td class="align-middle">${item.group.name}</td>
					<td class="align-middle">${item.sum}</td>
					<td class="align-middle">${item.count}</td>
				</tr>
			</c:forEach>
		</table>