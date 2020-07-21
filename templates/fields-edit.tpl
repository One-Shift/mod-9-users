<div class="spacer all-30"></div>
<div class="row">
	<div class="col">
		<form action="{{ mdl-url }}fields-edit/{{ id }}" method="post">
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="input-name">{{ name }}</label>
						<input type="text" class="form-control" id="input-name" name="name" value="{{ name-val}" required>
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="input-value">{{ value }}</label>
						<input type="text" class="form-control" id="input-value" name="value" value="{{ value-val}">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="input-placeholder">{{ placeholder }}</label>
						<input type="text" class="form-control" id="input-placeholder" name="placeholder" value="{{ placeholder-val }}">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="input-sort">{{ sort }}</label>
						<input type="number" class="form-control" id="input-sort" name="sort" value="{{ sort-val }}">
					</div>
				</div>
			</div>
			<div class="spacer all-15"></div>
			<div class="row">
				<div class="col d-flex align-items-center">
					<div class="bo3-form-control custom-control custom-checkbox">
						<input type="checkbox" id="inputRequired" class="custom-control-input" name="required" {{ required-val }}/>
						<label class="custom-control-label" for="inputRequired">{{ required }}</label>
					</div>
				</div>
				<div class="col d-flex align-items-center">
					<div class="bo3-form-control custom-control custom-checkbox">
						<input type="checkbox" id="inputStatus" class="custom-control-input" name="status" {{ status-val }}/>
						<label class="custom-control-label" for="inputStatus">{{ status }}</label>
					</div>
				</div>
				<div class="col taright">
					<button type="submit" class="btn btn-action btn-success" name="submit"><i class="fas fa-save"></i><span class="block all-15"></span>{{ but-submit }}</button>
				</div>
			</div>
		</form>
	</div>
</div>
