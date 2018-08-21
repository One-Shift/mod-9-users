{c2r-return-message}
<div class="spacer all-30"></div>
<div class="row">
	<div class="col-12 col-sm-12 col-lg-4 tacenter">
		<img src="https://www.gravatar.com/avatar/{c2r-md5-mail}?s=250&r=g&d=mm" class="rounded-circle">
		<div class="spacer all-30"></div>
		<form method="post" name="form" id="form" action="{c2r-path-bo}/{c2r-lg}/{c2r-module-folder}/remove/{c2r-user-id}" enctype="multipart/form-data">
			<!-- CHECK IF DELETE FIELD-->
			<div class="tacenter">
				<div class="form-group">
					<div class="checkbox">
						<label>
							<input name="inputRemove" id="inputRemove" type="checkbox" value="1" required> {c2r-lg-check-remove}
						</label>
					</div>
				</div>
				<div class="spacer all-15"></div>
				<button type="submit" class="btn btn-save btn-danger" name="remove_btn" id="remove_btn">
					<i class="fas fa-trash-alt" aria-hidden="true"></i><span class="block all-15"></span>{c2r-lg-remove}
				</button>
			</div>
		</form>
	</div>
	<div class="col-12 col-sm-12 col-lg-8">
		<div class="row">
			{c2r-form}
		</div>
	</div>
</div>
