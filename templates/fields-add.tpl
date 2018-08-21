<div class="spacer all-30"></div>
<div class="row">
	<div class="col">
		<form action="{c2r-path-bo}/{c2r-lg}/{c2r-module-folder}/fields-add/" method="post">
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="input-name">{c2r-name}</label>
						<input type="text" class="form-control" id="input-name" name="name" required>
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="input-value">{c2r-value}</label>
						<input type="text" class="form-control" id="input-value" name="value">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="input-sort">{c2r-sort}</label>
						<input type="number" class="form-control" id="input-sort" name="sort" value="0">
					</div>
				</div>
			</div>
			<div class="spacer all-15"></div>
			<div class="row">
				<div class="col d-flex align-items-center">
					<label><input type="checkbox" name="required" value="0"/> {c2r-required}</label>
				</div>
				<div class="col d-flex align-items-center">
					<label><input type="checkbox" name="status" value="1"/> {c2r-status}</label>
				</div>
				<div class="col taright">
					<button type="submit" class="btn btn-success" name="submit"><i class="fas fa-save"></i><span class="block all-15"></span>{c2r-but-submit}</button>
				</div>
			</div>
		</form>
	</div>
</div>
