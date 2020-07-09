<form class="tacenter" action="{{ mdl-url }}delete/{{ id }}" method="post">
	<div class="spacer all-15"></div>
	<div class="alert alert-danger d-block" role="alert"><i class="fas fa-exclamation-triangle"></i> {{ phrase }}</div>
	<button type="submit" name="submit" class="btn btn-danger btn-cancel">
		<i class="fas fa-trash-alt" aria-hidden="true"></i><span class="block all-15"></span>{{ del }}
	</button>
	<span class="block all-15"></span>
	<a href="{{ mdl-url }}" class="btn btn-warning btn-edit" role="button">
		<i class="fas fa-undo"></i><span class="block all-15"></span>{{ cancel} }
	</a>
</form>
