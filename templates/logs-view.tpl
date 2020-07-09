<div class="spacer all-30"></div>
<div class="card">
	<div class="card-header">
		<h4>Login info of {{ username }}</h4>
	</div>
	<div class="card-body">
		<div class="row">
			<div class="col-12 col-sm-12 col-lg-4 tacenter">
				<div class="avatar-placeholder b-{{ rank }} tacenter">
					<img src="http://www.gravatar.com/avatar/{{ md5-email }}?s=150&r=g&d=mm" class="rounded-circle" alt="gravatar" title="I'm the {{ rank }} and this is my Gravatar!">
				</div>
				<div class="spacer all-60"></div>
				<div class="username">
					<h4><strong>{{ username }}</strong></h4>
				</div>
				<div class="spacer all-30"></div>
				<div class="email">
					<h4><strong>{{ email }}</strong></h4>
				</div>
				<div class="spacer all-30"></div>
			</div>
			<div class="col-12 col-sm-12 col-lg-8">
				<div class="row">
					{{ object }}
				</div>
			</div>
		</div>
	</div>
</div>
