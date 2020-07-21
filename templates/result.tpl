<div class="row">
	<div class="col-12">
		<div class="spacer all-15"></div>
		<div class="alert alert-{{ status }} d-block" role="alert"><i class="fas fa-exclamation-triangle"></i> {{ content }}</div>
	</div>
</div>
<div class="spacer all-15"></div>
<div class="row">
	<div class="col tacenter">
		<a href="{{ mdl-url }}" class="btn btn-success btn-action"><i class="fas fa-undo"></i> {{ back-list }}</a>
		<div class="block all-15"></div>
		<a href="{{ mdl-url }}add" class="btn btn-success btn-action {{ add-active }}"><i class="fas fa-plus"></i> {{ new-user }}</a>
		<a href="{{ mdl-url }}edit/{{ id }}" class="btn btn-warning {{ edit-active }}"><i class="fas fa-edit"></i> {{ edit-mode }}</a>
	</div>
</div>

<link rel="stylesheet" href="{{ mdl-path }}/site-assets/css/style.css">
