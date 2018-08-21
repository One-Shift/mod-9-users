<div class="col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2">
	<div class="card bg-light mb-3 b-{c2r-rank}">
		<a type="button" data-toggle="collapse" href="#tab_{c2r-user-id}" aria-expanded="false" aria-controls="collapseExample">
			<img class="card-img-top" src="https://www.gravatar.com/avatar/{c2r-md5-mail}?s=250&r=g&d=mm" title="{c2r-username}" alt="{c2r-username}">
		</a>
		<div class="collapse box bo-box" id="tab_{c2r-user-id}">
			<div class="card-title bg-{c2r-rank}">
				<h5>
					{c2r-username} the {c2r-rank}
				</h5>
				<button type="button" class="closeBox" data-toggle="collapse" href="#tab_{c2r-user-id}" aria-expanded="false" aria-controls="collapseExample">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="spacer all-15"></div>
			<div class="card-content">
				<p title="{c2r-lg-email-title}">{c2r-email}</p>
				<p><span title="{c2r-lg-status-title}">{c2r-status}</span></p>
			</div>
			<div class="tacenter">
				<a href="{c2r-path-bo}/{c2r-lg}/{c2r-module-folder}/edit/{c2r-user-id}" class="btn btn-edit btn-success rounded-0 {c2r-access} bg-{c2r-rank}" role="button" title="{c2r-lg-edit}">
					<i class="fas fa-pencil-alt" aria-hidden="true"></i>
				</a>
			</div>
		</div>
	</div>
</div>
