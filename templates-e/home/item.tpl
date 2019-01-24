<div class="col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2">
	<div class="card bg-light mb-3 b-{c2r-rank} {c2r-active}">
		<div class="card-content">
			<div class="wrap">
				<div class="card-title">
					<span>{c2r-username} the {c2r-rank}</span>
				</div>
				<div class="card-info">
					<span>{c2r-status}</span>
				</div>
				<div class="spacer all-15"></div>
				<div class="card-action">
					<a href="{c2r-mdl-url}edit/{c2r-user-id}" class="btn btn-edit btn-action {c2r-access} bg-{c2r-rank}" role="button" title="{c2r-lg-edit}">
						<i class="fas fa-pencil-alt" aria-hidden="true"></i>
					</a>
					<div class="block all-15"></div>
					<a href="{c2r-mdl-url}delete/{c2r-user-id}" class="btn btn-action btn-del {c2r-access}" role="button" title="{c2r-lg-edit}">
						<i class="fas fa-trash-alt" aria-hidden="true"></i>
					</a>
				</div>
			</div>
		</div>
		<img class="card-img-top" src="https://www.gravatar.com/avatar/{c2r-md5-mail}?s=250&r=g&d=mm" title="{c2r-username}" alt="{c2r-username}">
	</div>
</div>
