{{ return-message }}
<div class="spacer all-30"></div>
<div class="card">
	<div class="card-body">
		<div class="row">
			<div class="col-12 col-sm-12 col-lg-4 tacenter">
				<img src="https://www.gravatar.com/avatar/{{ md5-mail }}?s=250&r=g&d=mm" class="rounded-circle">
				<div class="spacer all-30"></div>
				<form method="post" name="form" id="form" action="{{ mdl-url }}delete/{{ user-id }}" enctype="multipart/form-data">
					<!-- CHECK IF DELETE FIELD-->
					<div class="tacenter">
						<button type="submit" class="au-btn au-btn-icon au-btn--red" name="remove_btn" id="remove_btn">
							<i class="zmdi zmdi-delete" aria-hidden="true"></i><span class="block all-15"></span>{{ lg-remove }}
						</button>
					</div>
				</form>
			</div>
			<div class="col-12 col-sm-12 col-lg-8">
				{{ form }}
			</div>
		</div>
	</div>
</div>

<link rel="stylesheet" href="{{ mdl-path }}/site-assets/css/style.css">