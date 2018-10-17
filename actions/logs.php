<?php

$logs = new c9_user();
$logs = $logs->returnLogs();

if (!empty($logs)) {
	foreach ($logs as $i => $log) {
		if (!isset($logs_list)) {
			$logs_list = "";
			$item_tpl = bo3::mdl_load("templates-e/logs/item.tpl");
		}

		$description = json_decode($log->description);

		$logs_list .= bo3::c2r([
			"id" => $log->id,
			"user" => $log->user_id,
			"ip" => $description->ip,
			"date" => $log->date
		], $item_tpl);
	}
}

$mdl = bo3::c2r([
	"user" => $mdl_lang["logs"]["user"],
	"ip" => $mdl_lang["logs"]["ip"],
	"date" => $mdl_lang["logs"]["date"],
	"list" => (isset($logs_list)) ? $logs_list : "",
	"but-view" => $lang["logs"]["but-view"]
], bo3::mdl_load("templates/logs.tpl"));

include "pages/module-core.php";
