<?php

// Delete all the followme trees. This function selects from the users table
// and not the findmefollow table because the uninstall code deletes the tables
// prior to running the uninstall script. (probably should be the opposite but...)
// It is probably better this way anyhow, as there is no harm done if the user
// has not followme settings and who knows ... maybe some stray ones got left
// behind somehow.

// TODO do we really need to test for astman...? we do it anyway bellow...?
checkAstMan();

// TODO, is this needed...?
// is this global...? what if we include this files
// from a function...?
global $astman;
global $amp_conf;

$sql = "SELECT * FROM users";
$userresults = sql($sql,"getAll",DB_FETCHMODE_ASSOC);
	
//add details to astdb
if ($astman) {
	foreach($userresults as $usr) {
		extract($usr);
		$astman->database_del("AMPUSER",$extension."/followme/prering");
		$astman->database_del("AMPUSER",$extension."/followme/grptime");
		$astman->database_del("AMPUSER",$extension."/followme/grplist");
		$astman->database_del("AMPUSER",$extension."/followme/grpconf");
	}	
} else {
	echo _("Cannot connect to Asterisk Manager with ").$amp_conf["AMPMGRUSER"]."/".$amp_conf["AMPMGRPASS"];
}

?>
