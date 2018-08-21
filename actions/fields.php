<?php

$fields = user::returnAllFields();

if(!empty($fields)) {
	foreach ($fields as $i => $item) {
		if(!isset($list)) {
			$list = "";
			$item_tpl = bo3::mdl_load("templates-e/fields/item.tpl");
		}

		$list .= bo3::c2r([
			"id" => $item->id,
			"name" => $item->name,
			"value" => $item->value,
			"required" => ($item->required) ? "check" : "times",
			"sort" => $item->sort,
			"status" => ($item->status) ? "check" : "times",
			"date-created" => $item->date,
			"date" => $item->date_update,
			"but-edit" => $mdl_lang["fields"]["but-edit"],
			"but-delete" => $mdl_lang["fields"]["but-delete"]
		], $item_tpl);
	}
}

$mdl = bo3::c2r(
	[
		"add-field" => $mdl_lang["fields"]["add"],
		"name" => $mdl_lang["fields"]["name"],
		"value" => $mdl_lang["fields"]["value"],
		"type" => $mdl_lang["fields"]["type"],
		"required" => $mdl_lang["fields"]["required"],
		"sort" => $mdl_lang["fields"]["sort"],
		"status" => $mdl_lang["fields"]["status"],
		"date" => $mdl_lang["fields"]["date"],
		"list" => (isset($list)) ? $list : $mdl_lang["fields"]["no-results"]
	],
	bo3::mdl_load("templates/fields.tpl")
);

include "pages/module-core.php";
