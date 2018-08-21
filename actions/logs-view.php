<?php

if(isset($id) && !empty($id)) {

	$log = new user();
	$log->setId($id);
	$log = $log->returnLog();

	$user = new user();
	$user->setId($log->user_id);
	$user = $user->returnOneUser();

	$ip = json_decode($log->description);

	$details = json_decode(file_get_contents("http://ipinfo.io/{$ip->ip}/json"));

	if(!empty($details)) {
		foreach ($details as $i => $item) {
			if(!isset($list)) {
				$list = "";
				$item_tpl = bo3::mdl_load("templates-e/logs/view.tpl");
			}

			$list .= bo3::c2r([
				"title" => $i,
				"value" => $item
			], $item_tpl);
		}
	}

	$breadcrumb = [
		["name" => "Logs", "link" => "{c2r-path-bo}/{c2r-lg}/{c2r-module-folder}/logs/"]
	];

	$mdl = bo3::c2r(
		[
			"md5-email" => md5($user->email),
			"username" => $user->username,
			"email" => $user->email,
			"rank" => $user->rank,
			"object" => (isset($list)) ? $list : ""
		],
		bo3::mdl_load("templates/logs-view.tpl")
	);

} else {
	header('Location: {$cfg->system->path_bo}/{$lg_s}/9-users/logs/');
}

include "pages/module-core.php";
