<?php
$form_tpl = bo3::mdl_load("templates-e/add/form.tpl");
$message_tpl = bo3::mdl_load("templates-e/message.tpl");

$mail_exists = FALSE;
$user_exists = FALSE;

if (isset($_POST["save"])) {

	$user = new user();
/*----------------------------VERIFICATIONS BEGINS----------------------------*/
	/*----------Username----------*/
	if (isset($_POST["inputName"]) && !empty($_POST["inputName"])) {
		$user->setUsername($_POST["inputName"]);
		$username_success = TRUE;
		bo3::dump("username");
		/*Verifies if this username doesn't exist*/

		if ($user->existUserByName() != 0) {
			$returnMessage = bo3::c2r(
				[
					"message-type" => "",
					"lg-message" => $mdl_lang["username"]["exists"]
				],
				$message_tpl
			);
			$user_exists = TRUE;
		}
	}

	/*----------Email----------*/
	if (isset($_POST["inputEmail"]) && !empty($_POST["inputEmail"])) {
		$user->setEmail($_POST["inputEmail"]);
		$email_success = TRUE;
		bo3::dump("email");
		/*Verifies if this email doesn't exist*/
		if ($user->existUserByEmail() != 0) {
			$returnMessage = bo3::c2r(
				[
					"message-type" => "",
					"lg-message" => $mdl_lang["mail"]["exists"]
				],
				$message_tpl
			);
			$mail_exists = TRUE;
		}
	}

	/*----------Password----------*/
	if (isset($_POST["inputNewpass"]) && !empty($_POST["inputNewpass"])) {
		if ($_POST["inputNewpass"] == $_POST["inputConfirm"]) {
			$user->setPassword($_POST["inputNewpass"]);
			$password_success = true;
		} else {
			$returnMessage = bo3::c2r(
				[
					"message-type" => "",
					"lg-message" => $mdl_lang["pass"]["check_failure"]
				],
				$message_tpl
			);
		}
	}

	/*Fields that don't require verification - Rank, Code, Status, Date and Date Update*/
	if (isset($password_success) && isset($email_success) && isset($username_success) && $mail_exists == FALSE && $user_exists == FALSE) {
		$user->setRank($_POST["inputRank"]);
		$user->setCode(
			(isset($_POST["info"]) && !empty($_POST["info"])) ? json_encode($_POST["info"], JSON_UNESCAPED_UNICODE) : ""
		);
		$user->setStatus($_POST["inputStatus"]);
		$user->setDate();
		$user->setDateUpdate();
		$user->setUserKey();

		/*----------------------------VERIFICATIONS ENDS----------------------------*/

		/*----------------------------INSERT BEGINS----------------------------*/
		bo3::dump("inside");
		if ($user->insert()) {
			bo3::dump("insert");
			$returnMessage = bo3::c2r(
				[
					"message-type" => "success",
					"lg-message" => $mdl_lang["adduser"]["success"]
				],
				$message_tpl
			);
		} else {
			$returnMessage = bo3::c2r(
				[
					"message-type" => "danger",
					"lg-message" => $mdl_lang["adduser"]["failure"]
				],
				$message_tpl
			);
		}
	}
}

$fields = user::returnFields();

if(!empty($fields)) {
	foreach ($fields as $f => $field) {
		if(!isset($list)) {
			$list = "";
			$item_tpl = bo3::mdl_load("templates-e/add/item.tpl");
		}

		$field_name = strtolower($field->name);

		$list .= bo3::c2r([
			"name" => $field->name,
			"lg-name" => $mdl_lang["label"]["{$field_name}"],
			"value" => (isset($infos) && !empty($infos->{$field_name})) ? $infos->{$field_name} : "",
			"ph" => $mdl_lang["placeholder"]["{$field_name}"],
			"required" => ($infos->required) ? "required" : ""
		], $item_tpl);
	}
}

$form = bo3::c2r(
	[
		"lg-name" => $mdl_lang["add"]["name"],
		"lg-email" => $mdl_lang["add"]["email"],
		"lg-pass" => $mdl_lang["add"]["pass"],
		"lg-confirm" => $mdl_lang["add"]["confirm"],
		"lg-rank" => $mdl_lang["add"]["rank"],
		"lg-owner" => $mdl_lang["add"]["owner"],
		"lg-manager" => $mdl_lang["add"]["manager"],
		"lg-member" => $mdl_lang["add"]["member"],
		"lg-code" => $mdl_lang["add"]["code"],
		"lg-status" => $mdl_lang["add"]["status"],
		"lg-auth" => $mdl_lang["add"]["auth"],
		"lg-info" => $mdl_lang["add"]["info"],
		"btn-save" => $mdl_lang["add"]["save"],
		"lg-owner-value" => $mdl_lang["add"]["owner-value"],
		"lg-manager-value" => $mdl_lang["add"]["manager-value"],
		"lg-member-value" => $mdl_lang["add"]["member-value"],
		"other-info" => (isset($list)) ? $list : ""
	],
	$form_tpl
);

$mdl = bo3::c2r(
	[
		"return-message" => (isset($returnMessage)) ? $returnMessage : "",
		"adduser-form" => $form
	],
	bo3::mdl_load("templates/add.tpl")
);

include "pages/module-core.php";
