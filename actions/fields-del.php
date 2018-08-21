<?php
$breadcrumb = [
	["name" => "Fields", "link" => "{c2r-path-bo}/{c2r-lg}/{c2r-module-folder}/fields/"]
];

if (isset($id) && !empty($id)) {
	// Return all category info
	$field = new user();
	$toReturn = "";

	if (isset($_POST["submit"])) {
		if (user::deleteField($id)) {
			$toReturn = $mdl_lang["fields"]["success-del"];
		} else {
			$toReturn =  $mdl_lang["fields"]["failure-del"];
		}
	} else {
		$field = $field->returnOneField($id);

		$toReturn = bo3::c2r(
			[
				"id" => $id,

				"phrase" => $mdl_lang["fields"]["phrase"],
				"title" => $field->name,

				"del" => $mdl_lang["fields"]["button-del"],
				"cancel" => $mdl_lang["fields"]["button-cancel"]
			],
			bo3::mdl_load("templates-e/fields/form.tpl")
		);
	}

	$mdl = bo3::c2r(["content" => $toReturn], bo3::mdl_load("templates/result.tpl"));

} else {
	// if doesn't exist an action response, system sent you to 404
	header("Location: {$cfg->system->path_bo}/0/{$lg_s}/404/");
}

include "pages/module-core.php";
