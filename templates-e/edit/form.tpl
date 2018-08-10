<form class="w-100" method="post" name="form" id="form" enctype="multipart/form-data">
	<div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6 float-left">
		<!--USERNAME FIELD-->
		<div>
			<div class="form-group">
				<div class="spacer all-15"></div>
				<label for="inputName">{c2r-lg-name}</label>
				<input type="text" class="form-control" id="inputName" name="inputName" value="{c2r-username}">
			</div>
		</div>
		<!--HIDDEN FIELD BECAUSE PASSWORD WAS AUTOCOMPLETING (the autocomplete="off" rule was not being respected on firefox)-->
		<input type="text" style="display:none">

		<!--NEW PASSWORD FIELD-->
		<div>
			<div class="form-group">
				<div class="spacer all-15"></div>
				<label for="inputNewpass">{c2r-lg-newpass}</label>
				<input type="password" class="form-control" id="inputNewpass" name="inputNewpass" autocomplete="off">
			</div>
		</div>
		<!-- RANK FIELD-->
		<div>
			<div class="form-group">
				<div class="spacer all-15"></div>
				<label for="inputRank">{c2r-lg-rank}</label>
				<select class="form-control" id="inputRank" name="inputRank">
					<option {c2r-owner-selected}>{c2r-lg-owner}</option>
					<option {c2r-manager-selected}>{c2r-lg-manager}</option>
					<option {c2r-member-selected}>{c2r-lg-member}</option>
				</select>
			</div>
		</div>
	</div>
	<div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6 float-left">
		<!--EMAIL FIELD-->
		<div>
			<div class="form-group">
				<div class="spacer all-15"></div>
				<label for="inputEmail">{c2r-lg-email}</label>
				<input type="email" class="form-control" id="inputEmail" name="inputEmail" value="{c2r-email}">
			</div>
		</div>
		<!--NEW PASSWORD CONFIRM FIELD-->
		<div>
			<div class="form-group">
				<div class="spacer all-15"></div>
				<label for="inputConfirm">{c2r-lg-confirm}</label>
				<input type="password" class="form-control" id="inputConfirm" name="inputConfirm" autocomplete="off">
			</div>
		</div>
		<!-- CODE FIELD-->
		<div>
			<div class="form-group">
				<div class="spacer all-15"></div>
				<label for="inputCode">{c2r-lg-code}</label>
				<textarea class="form-control" rows="1" name="inputCode" id="inputCode">{c2r-code}</textarea>
			</div>
		</div>
	</div>
	<!-- SATUS FIELD-->
	<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 float-left tacenter">
		<div class="form-group">
			<div class="spacer all-30"></div>
			<div class="checkbox">
				<label><input type="checkbox" name="inputStatus" id="inputStatus" value="1" {c2r-status-checked}> {c2r-lg-status}</label>
			</div>
		</div>
	</div>
	<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 float-left tacenter">
		<!-- SUBMIT BUTTON -->
		<div class="spacer all-30"></div>
		<button type="submit" class="btn btn-save btn-success" name="save" id="save"><i class="fas fa-save" aria-hidden="true"></i><span class="block all-15"></span>{c2r-btn-save}</button>
		<div class="spacer all-30"></div>
	</div>
</form>
