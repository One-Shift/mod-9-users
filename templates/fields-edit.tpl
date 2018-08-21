<div class="spacer all-30"></div>
<div class="row">
	<div class="col">
		<form action="{c2r-path-bo}/{c2r-lg}/{c2r-module-folder}/fields-edit/{c2r-id}" method="post">
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="input-name">{c2r-name}</label>
						<input type="text" class="form-control" id="input-name" name="name" value="{c2r-name-val}" required>
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="input-value">{c2r-value}</label>
						<input type="text" class="form-control" id="input-value" name="value" value="{c2r-value-val}">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="input-sort">{c2r-sort}</label>
						<input type="number" class="form-control" id="input-sort" name="sort" value="{c2r-sort-val}">
					</div>
				</div>
			</div>
			<div class="spacer all-15"></div>
			<div class="row">
				<div class="col d-flex align-items-center">
					<label><input type="checkbox" name="required" {c2r-required-val}/> {c2r-required}</label>
				</div>
				<div class="col d-flex align-items-center">
					<label><input type="checkbox" name="status" {c2r-status-val}/> {c2r-status}</label>
				</div>
				<div class="col taright">
					<button type="submit" class="btn btn-success" name="submit"><i class="fas fa-save"></i><span class="block all-15"></span>{c2r-but-submit}</button>
				</div>
			</div>
		</form>
	</div>
</div>
