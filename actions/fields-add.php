<?php

if(isset($_POST["submit"])) {
	$breadcrumb = [
		["name" => "Fields", "link" => "{c2r-path-bo}/{c2r-lg}/{c2r-module-folder}/fields/"]
	];

	if(
		user::insertField(
			$_POST["name"],
			$_POST["value"],
			"text",
			$_POST["sort"],
			(isset($_POST["required"])) ? TRUE : FALSE,
			(isset($_POST["Status"])) ? TRUE : FALSE
		)
	) {
		$message = $mdl_lang["fields"]["success"];
	} else {
		$message = $mdl_lang["fields"]["Failure"];
	}

	$mdl = bo3::c2r([
		"content" => $message
	], bo3::mdl_load("templates/result.tpl"));

	header("Refresh:5; url={$cfg->system->path_bo}/{$lg_s}/9-users/fields/");

} else {

	$breadcrumb = [
		["name" => "Fields", "link" => "{c2r-path-bo}/{c2r-lg}/{c2r-module-folder}/fields/"]
	];

	$mdl = bo3::c2r([
		"name" => $mdl_lang["fields"]["name"],
		"value" => $mdl_lang["fields"]["value"],
		"type" => $mdl_lang["fields"]["type"],
		"required" => $mdl_lang["fields"]["required"],
		"sort" => $mdl_lang["fields"]["sort"],
		"status" => $mdl_lang["fields"]["status"],
		"but-submit" => $mdl_lang["fields"]["but-submit"]
	], bo3::mdl_load("templates/fields-add.tpl"));
}


include "pages/module-core.php";
