<%@ page pageEncoding="utf-8" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

		<form:form action="/category/index" modelAttribute="item"><form>
		
			<div class="card">
				<div class="card-body">

					<div class="row">
						<div class="col-3">
							<div class="p-3">
								<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnWTGzMQ0VuD5sEtoVaL2JPirHgT5M9YNBtQ&usqp=CAU"
									alt="">

							</div>
						</div>
						<div class="col-9">
							<div class="form-group">
								<label for="youtubeid">Category ID</label>
								<form:input class="form-control" path="id" placeholder="Category Id?" />
								<small id="youtubeIHid" class="form-text text-muted"></small>
							</div>
							<div class="form-group">
								<label for="videotitle">Category name</label>
								<form:input class="form-control" path="name" placeholder="Category Name?" />
								<small id="videotHid" class="form-text text-muted"></small>
							</div>

						</div>
					</div>

				</div>
				<div class="card-footer text-muted text-center" style="background: #696969;">
					<button id="a" style='--clr:#1e9bff' formaction="/category/create"><span id="span">Create</span><i id="i"></i></button>
					<button id="a"  style='--clr:#FFD700' formaction="/category/update"><span id="span">Update</span><i id="i"></i></button>
					<button id="a"  style='--clr:#FF0000' formaction="/category/delete/${item.id}"><span id="span">Delete</span><i id="i"></i></button>
					<button id="a"  style='--clr:#40E0D0' formaction="/category/index"><span id="span">Reset</span><i id="i"></i></button>
				</div>
			</div>
			</form>
		</form:form>