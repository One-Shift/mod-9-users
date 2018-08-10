<div class="col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2">
	<div class="card bg-light mb-3 {c2r-rank}">
		<a type="button" data-toggle="collapse" href="#tab_{c2r-user-id}" aria-expanded="false" aria-controls="collapseExample">
			<img class="card-img-top" src="https://www.gravatar.com/avatar/{c2r-md5-mail}?s=250&r=g&d=mm" title="{c2r-username}" alt="{c2r-username}">
		</a>
		<div class="collapse box bo-box" id="tab_{c2r-user-id}">
			<div class="innerBox">
				<h5 class="card-title taleft">{c2r-username}
					<button type="button" class="closeBox" data-toggle="collapse" href="#tab_{c2r-user-id}" aria-expanded="false" aria-controls="collapseExample">
						<span aria-hidden="true">&times;</span>
					</button>
				</h5>
				<div class="spacer all-15"></div>
				<p title="{c2r-lg-email-title}">{c2r-email}</p>
				<p title="{c2r-lg-rank-title}">{c2r-rank} | <span title="{c2r-lg-status-title}">{c2r-status}</span></p>
				<p title="{c2r-lg-date-title}">{c2r-date}</p>
			</div>
			<div class="tacenter">
				<a href="{c2r-path-bo}/{c2r-lg}/{c2r-module-folder}/edit/{c2r-user-id}" class="btn btn-edit btn-success d-block rounded-0" role="button" title="{c2r-lg-edit}">
					<i class="fas fa-pencil-alt" aria-hidden="true"></i>
				</a>
			</div>
		</div>
	</div>
</div>

<style>

.innerBox {
	padding: 15px;
}

.card-title {
	margin-bottom: 0;
}

.bo-box {
	position: absolute;
	background-color: #fff;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	transition: height 0.35s ease;
	border: 0;
}

.closeBox {
	float: right;
	font-size: 1.5rem;
	font-weight: 700;
	line-height: 1;
	color: #000;
	text-shadow: 0 1px 0 #fff;
	opacity: 1;
    cursor: pointer;
	padding: 0;
	background-color: transparent;
	border: 0;
	-webkit-appearance: none;
	outline: 0;
	outline: none !important;
	box-shadow: none;
}

.btn-edit {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
}

.owner {
	border: 5px solid #37c871;
}

.manager {
	border: 5px solid blue;
}

.member {
	border: 5px solid gray;
}

</style>
