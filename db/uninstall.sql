DELETE FROM `{{ prefix }}_modules` WHERE `folder` = '{{ mod-folder }}';

DROP TABLE IF EXISTS `{{ prefix }}_9_users`;
DROP TABLE IF EXISTS `{{ prefix }}_9_users_fields`;
