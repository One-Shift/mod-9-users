<?php

if(isset($id) && !empty($id)) {
	$breadcrumb = [
		["name" => "Fields", "link" => "{c2r-path-bo}/{c2r-lg}/{c2r-module-folder}/fields/"]
	];

	$field = user::returnOneField($id);

	if(isset($_POST["submit"])) {

		if(
			user::updateField(
				$_POST["name"],
				$_POST["value"],
				$_POST["sort"],
				(isset($_POST["required"])) ? TRUE : FALSE,
				(isset($_POST["status"])) ? TRUE : FALSE,
				$id
			)
		) {
			$message = $mdl_lang["fields"]["success"];
		} else {
			$message = $mdl_lang["fields"]["failure"];
		}

		$mdl = bo3::c2r([
			"content" => $message
		], bo3::mdl_load("templates/result.tpl"));
	} else {

		$mdl = bo3::c2r([
			"name" => $mdl_lang["fields"]["name"],
			"value" => $mdl_lang["fields"]["value"],
			"type" => $mdl_lang["fields"]["type"],
			"required" => $mdl_lang["fields"]["required"],
			"sort" => $mdl_lang["fields"]["sort"],
			"status" => $mdl_lang["fields"]["status"],
			"but-submit" => $mdl_lang["fields"]["but-submit"],

			//values
			"id" => $field->id,
			"name-val" => $field->name,
			"value-val" => $field->value,
			"type-val" => $field->type,
			"required-val" => ($field->required) ? "checked" : "",
			"sort-val" => $field->sort,
			"status-val" => ($field->status) ? "checked" : ""

		], bo3::mdl_load("templates/fields-edit.tpl"));
	}
} else {
	header("Location: {$cfg->system->path_bo}/{$lg_s}/9-users/fields/");
}

include "pages/module-core.php";
