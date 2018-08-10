<form class="w-100" method="post" name="form" id="form" enctype="multipart/form-data">
	<div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 float-left">
		<!--USERNAME FIELD-->
		<div>
			<div class="form-group">
				<div class="spacer all-15"></div>
				<label for="inputName">{c2r-lg-name}</label>
				<input type="text" class="form-control" id="inputName" name="inputName" placeholder="" required>
			</div>
		</div>
		<!--PASSWORD FIELD-->
		<div>
			<div class="form-group">
				<div class="spacer all-15"></div>
				<label for="inputPass">{c2r-lg-pass}</label>
				<input type="password" class="form-control" id="inputPass" name="inputPass" placeholder="" required>
			</div>
		</div>
		<!-- RANK FIELD-->
		<div>
			<div class="form-group">
				<div class="spacer all-15"></div>
				<label for="inputRank">{c2r-lg-rank}</label>
				<select class="form-control" id="inputRank" name="inputRank">
					<option value="{c2r-lg-owner-value}">{c2r-lg-owner}</option>
					<option value="{c2r-lg-manager-value}">{c2r-lg-manager}</option>
					<option value="{c2r-lg-member-value}" selected>{c2r-lg-member}</option>
				</select>
			</div>
		</div>
	</div>
	<div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 float-left">
		<!--EMAIL FIELD-->
		<div>
			<div class="form-group">
				<div class="spacer all-15"></div>
				<label for="inputEmail">{c2r-lg-email}</label>
				<input type="email" class="form-control" id="inputEmail" name="inputEmail" placeholder="" required>
			</div>
		</div>

		<!--PASSWORD CONFIRM FIELD-->
		<div>
			<div class="form-group">
				<div class="spacer all-15"></div>
				<label for="inputConfirm">{c2r-lg-confirm}</label>
				<input type="password" class="form-control" id="inputConfirm" name="inputConfirm" placeholder="" required>
			</div>
		</div>
		<!-- CODE FIELD-->
		<div>
			<div class="form-group">
				<div class="spacer all-15"></div>
				<label for="inputCode">{c2r-lg-code}</label>
				<textarea class="form-control" rows="1" name="inputCode" id="inputCode"></textarea>
			</div>
		</div>
		<div class="spacer all-30"></div>
	</div>
	<!-- SATUS FIELD-->
	<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 float-left tacenter">
		<div class="form-group">
			<div class="checkbox">
				<input name="inputStatus" value="0" type="hidden">
				<label><input name="inputStatus" id="inputStatus" type="checkbox" value="1"> {c2r-lg-status}</label>
			</div>
		</div>
	</div>
	<!-- SUBMIT BUTTON -->
	<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 float-left tacenter">
		<div class="spacer all-30"></div>
		<button type="submit" class="btn btn-save btn-success" name="save" id="save"><i class="fas fa-save" aria-hidden="true"></i><div class="block all-15"></div>{c2r-btn-save}</button>
	</div>
</form>
