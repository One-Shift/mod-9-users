<div class="col-md-4">
	<div class="card">
		<div class="card-body">
			<div class="mx-auto d-block">
				<img class="rounded-circle mx-auto d-block" src="https://www.gravatar.com/avatar/{{ md5-mail }}?s=100&r=g&d=mm" alt="{{ username }}">
				<h5 class="text-sm-center mt-2 mb-1">{{ username }}</h5>
				<div class="email text-sm-center">
					{{ email }}
				</div>
			</div>
			<hr>
			<div class="card-text text-sm-center">
				<a href="{{ mdl-url }}edit/{{ user-id }}" class="btn btn-edit btn-action {{ access }} bg-{{ rank }}" role="button" title="{{ lg-edit }}">
					<i class="zmdi zmdi-edit" aria-hidden="true"></i>
				</a>
				<a href="{{ mdl-url }}delete/{{ user-id }}" class="btn btn-action btn-del {{ access }}" role="button" title="{{ lg-edit }}">
					<i class="zmdi zmdi-delete" aria-hidden="true"></i>
				</a>
			</div>
		</div>
		<div class="card-footer">
			{{ rank }}
			<small>
				<span class="badge badge-{{ status-label }} float-right mt-1">{{ status }}</span>
			</small>
		</div>
	</div>
</div>
