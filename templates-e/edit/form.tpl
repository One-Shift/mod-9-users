<form class="w-100" method="post" name="form" id="form" enctype="multipart/form-data">
	<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
		<li class="nav-item">
			<a class="au-btn au-btn-icon au-btn--default active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">{{ lg-info }}</a>
		</li>
		<span class="block all-15"></span>
		<li class="nav-item">
			<a class="au-btn au-btn-icon au-btn--default" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">{{ lg-auth }}</a>
		</li>
	</ul>
	<div class="tab-content" id="pills-tabContent">
		<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
			<div class="row">
				<div class="col">
					<!--USERNAME FIELD-->
					<div>
						<div class="form-group">
							<div class="spacer all-15"></div>
							<label for="inputName">{{ lg-name }}</label>
							<input type="text" class="form-control" id="inputName" name="inputName" value="{{ username}">
						</div>
					</div>
					<!--HIDDEN FIELD BECAUSE PASSWORD WAS AUTOCOMPLETING (the autocomplete="off" rule was not being respected on firefox)-->
					<input type="text" style="display:none">
				</div>
				<div class="col">
					<!--EMAIL FIELD-->
					<div>
						<div class="form-group">
							<div class="spacer all-15"></div>
							<label for="inputEmail">{{ lg-email }}</label>
							<input type="email" class="form-control" id="inputEmail" name="inputEmail" value="{{ email}">
						</div>
					</div>
				</div>
			</div>
			<div class="spacer all-15"></div>
			<div class="row">
				<div class="col">
					<!-- RANK FIELD-->
					<div>
						<div class="form-group">
							<div class="spacer all-15"></div>
							<label for="inputRank">{{ lg-rank }}</label>
							<select class="form-control" id="inputRank" name="inputRank">
								<option {{ owner-selected }}>{{ lg-owner }}</option>
								<option {{ manager-selected }}>{{ lg-manager }}</option>
								<option {{ member-selected }}>{{ lg-member }}</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="spacer all-30"></div>
			<div class="row">
				<div class="col">
					{{ other-info }}
				</div>
			</div>
		</div>

		<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
			<div class="row">
				<div class="col">
					<!--NEW PASSWORD FIELD-->
					<div>
						<div class="form-group">
							<div class="spacer all-15"></div>
							<label for="inputNewpass">{{ lg-newpass }}</label>
							<input type="password" class="form-control" id="inputNewpass" name="inputNewpass" autocomplete="off">
						</div>
					</div>
				</div>
				<div class="col">
					<!--NEW PASSWORD CONFIRM FIELD-->
					<div>
						<div class="form-group">
							<div class="spacer all-15"></div>
							<label for="inputConfirm">{{ lg-confirm }}</label>
							<input type="password" class="form-control" id="inputConfirm" name="inputConfirm" autocomplete="off">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col taleft">
			<div class="form-group">
				<div class="spacer all-30"></div>
				<div class="bo3-form-control custom-control custom-checkbox {{ action }}">
					<input type="checkbox" id="inputStatus" class="custom-control-input" name="inputStatus" {{ status-checked }}/>
					<label class="custom-control-label" for="inputStatus">{{ lg-status }}</label>
				</div>
			</div>
		</div>
		<div class="col taright">
			<div class="spacer all-30"></div>
			<button type="submit" class="au-btn au-btn-icon au-btn--green" name="save" id="save">
				<i class="fas fa-save" aria-hidden="true"></i><span class="block all-15"></span>{{ btn-save }}
			</button>
			<div class="spacer all-30"></div>
		</div>
	</div>
</form>
