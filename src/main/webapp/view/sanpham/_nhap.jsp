<%@ page pageEncoding="utf-8" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

		<div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-3">
						<div class="border p-3">
							<img src="" alt="" class="img-fluid">
							<div class="input-group mb-3 mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text">Upload</span>
								</div>
								<div class="custom-file">
									<input type="file" class="custom-file-input" id="cover" name="cover" /> <label
										for="cover">Choose File</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-9">
						<div class="form-group">
							<label for="youtubeid"> ID</label> <input type="text" class="form-control" name="videoId"
								id="youtubeid" value="${video.videoId }" aria-describedby="youtubeIHid" readonly>
							<small id="youtubeIHid" class="form-text text-muted"></small>
						</div>
						<div class="form-group">
							<label for="videotitle"> Name</label> <input type="text" class="form-control" name="title"
								id="videotitle" value="${video.title }" aria-describedby="videotHid">
							<small id="videotHid" class="form-text text-muted"></small>
						</div>
						<div class="form-group">
							<label class="my-1 mr-2" for="inlineFormCustomSelectPref">Category</label>
							<select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
								<option selected>Choose...</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
						<div class="form-group">
							<label for="viewcount"> Date</label> <input type="date" class="form-control" name="views"
								id="viewcount" value="${video.views }" aria-describedby="viewcountHid">
							<small id="viewcountHid" class="form-text text-muted"></small>
						</div>
						<div class="form-group">
							<label for="viewcount">Price</label> <input type="text" class="form-control" name="views"
								id="viewcount" value="${video.views }" aria-describedby="viewcountHid">
							<small id="viewcountHid" class="form-text text-muted"></small>
						</div>
						<div class="form-check form-check-inline">
							<label for=""><input type="radio" name="active" id="status" class="form-check-input"
									value="true" ${video.active? 'checked' : '' }>Active</label>
							<label for=""><input type="radio" name="active" id="status" class="form-check-input"
									value="false" ${! video.active? 'checked' : '' }>Inactive</label>
						</div>
					</div>
				</div>
			</div>
			<div class="card-footer text-muted">
				<button class="btn btn-primary" formaction="Admin/VideosManagement/create">Create</button>
				<button class="btn btn-warning" formaction="Admin/VideosManagement/update">Update</button>
				<button class="btn btn-danger" formaction="Admin/VideosManagement/delete">Delete</button>
				<button class="btn btn-info" formaction="Admin/VideosManagement/reset">Reset</button>
			</div>
		</div>