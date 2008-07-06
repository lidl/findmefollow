<?php /* $Id: page.findmefollow.php 1197 2006-03-19 17:59:02Z mheydon1973 $ */
//Copyright (C) 2006 Philippe Lindheimer (p_lindheimer at yahoo dot com)
//
//This program is free software; you can redistribute it and/or
//modify it under the terms of the GNU General Public License
//as published by the Free Software Foundation; either version 2
//of the License, or (at your option) any later version.
//
//This program is distributed in the hope that it will be useful,
//but WITHOUT ANY WARRANTY; without even the implied warranty of
//MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//GNU General Public License for more details.

$dispnum = 'findmefollow'; //used for switch on config.php

isset($_REQUEST['action'])?$action = $_REQUEST['action']:$action='';
//the extension we are currently displaying
isset($_REQUEST['extdisplay'])?$extdisplay=$_REQUEST['extdisplay']:$extdisplay='';
isset($_REQUEST['account'])?$account = $_REQUEST['account']:$account='';
isset($_REQUEST['grptime'])?$grptime = $_REQUEST['grptime']:$grptime='';
isset($_REQUEST['grppre'])?$grppre = $_REQUEST['grppre']:$grppre='';
isset($_REQUEST['strategy'])?$strategy = $_REQUEST['strategy']:$strategy='';
isset($_REQUEST['annmsg'])?$annmsg = $_REQUEST['annmsg']:$annmsg='';
isset($_REQUEST['dring'])?$dring = $_REQUEST['dring']:$dring='';
isset($_REQUEST['needsconf'])?$needsconf = $_REQUEST['needsconf']:$needsconf='';
isset($_REQUEST['remotealert'])?$remotealert = $_REQUEST['remotealert']:$remotealert='';
isset($_REQUEST['toolate'])?$toolate = $_REQUEST['toolate']:$toolate='';
isset($_REQUEST['ringing'])?$ringing = $_REQUEST['ringing']:$ringing='';
isset($_REQUEST['pre_ring'])?$pre_ring = $_REQUEST['pre_ring']:$pre_ring='0';
isset($_REQUEST['ddial'])?$ddial = $_REQUEST['ddial']:$ddial='';


if (isset($_REQUEST['goto0']) && isset($_REQUEST[$_REQUEST['goto0']."0"])) {
        $goto = $_REQUEST[$_REQUEST['goto0']."0"];
} else {
        $goto = '';
}


if (isset($_REQUEST["grplist"])) {
	$grplist = explode("\n",$_REQUEST["grplist"]);

	if (!$grplist) {
		$grplist = null;
	}
	
	foreach (array_keys($grplist) as $key) {
		//trim it
		$grplist[$key] = trim($grplist[$key]);
		
		// remove invalid chars
		$grplist[$key] = preg_replace("/[^0-9#*]/", "", $grplist[$key]);

		if ($grplist[$key] == ltrim($extdisplay,'GRP-').'#')
			$grplist[$key] = rtrim($grplist[$key],'#');
		
		// remove blanks
		if ($grplist[$key] == "") unset($grplist[$key]);
	}
	
	// check for duplicates, and re-sequence
	$grplist = array_values(array_unique($grplist));
}

// do if we are submitting a form
if(isset($_POST['action'])){
	//check if the extension is within range for this user
	if (isset($account) && !checkRange($account)){
		echo "<script>javascript:alert('". _("Warning! Extension")." ".$account." "._("is not allowed for your account").".');</script>";
	} else {
		//add group
		if ($action == 'addGRP') {
			findmefollow_add($account,$strategy,$grptime,implode("-",$grplist),$goto,$grppre,$annmsg,$dring,$needsconf,$remotealert,$toolate,$ringing,$pre_ring,$ddial);

			needreload();
			redirect_standard();
		}
		
		//del group
		if ($action == 'delGRP') {
			findmefollow_del($account);
			needreload();
			redirect_standard();
		}
		
		//edit group - just delete and then re-add the extension
		if ($action == 'edtGRP') {
			findmefollow_del($account);	
			findmefollow_add($account,$strategy,$grptime,implode("-",$grplist),$goto,$grppre,$annmsg,$dring,$needsconf,$remotealert,$toolate,$ringing,$pre_ring,$ddial);

			needreload();
			redirect_standard('extdisplay');
		}
	}
}
?>
</div>

<div class="rnav"><ul>
<?php 
//get unique ring groups
$gresults = findmefollow_allusers();
$set_users = findmefollow_list();

if (isset($gresults)) {
	foreach ($gresults as $gresult) {
		$defined = is_array($set_users) ? (in_array($gresult[0], $set_users) ? "(edit)" : "(add)") : "add";
                echo "<li><a id=\"".($extdisplay=='GRP-'.$gresult[0] ? 'current':'')."\" href=\"config.php?display=".urlencode($dispnum)."&extdisplay=".urlencode("GRP-".$gresult[0])."\">"._("$gresult[1]")." <{$gresult[0]}> $defined  </a></li>";

	}
}
?>
</ul></div>

<div class="content">
<?php 

if (!$extdisplay) {
	echo '<br><h2>'._("Follow Me").'</h2><br><h3>'._('Choose a user/extension:').'</h3><br><br><br><br><br><br><br>';
	}
elseif ($action == 'delGRP') {
	echo '<br><h3>'._("Follow Me").' '.$account.' '._("deleted").'!</h3><br><br><br><br><br><br><br><br>';
} else {
	if ($extdisplay) {
		// We need to populate grplist with the existing extension list.
		$thisgrp = findmefollow_get(ltrim($extdisplay,'GRP-'), 1);
		$grpliststr = isset($thisgrp['grplist']) ? $thisgrp['grplist'] : '';
		$grplist = explode("-", $grpliststr);

		$strategy    = isset($thisgrp['strategy'])    ? $thisgrp['strategy']    : '';
		$grppre      = isset($thisgrp['grppre'])      ? $thisgrp['grppre']      : '';
		$grptime     = isset($thisgrp['grptime'])     ? $thisgrp['grptime']     : '';
		$goto        = isset($thisgrp['postdest'])    ? $thisgrp['postdest']    : '';
		$annmsg      = isset($thisgrp['annmsg'])      ? $thisgrp['annmsg']      : '';
		$dring       = isset($thisgrp['dring'])       ? $thisgrp['dring']       : '';
		$remotealert = isset($thisgrp['remotealert']) ? $thisgrp['remotealert'] : '';
		$needsconf   = isset($thisgrp['needsconf'])   ? $thisgrp['needsconf']   : '';
		$toolate     = isset($thisgrp['toolate'])     ? $thisgrp['toolate']     : '';
		$ringing     = isset($thisgrp['ringing'])     ? $thisgrp['ringing']     : '';
		$pre_ring    = isset($thisgrp['pre_ring'])    ? $thisgrp['pre_ring']    : '';
		$ddial       = isset($thisgrp['ddial'])       ? $thisgrp['ddial']       : '';
		unset($grpliststr);
		unset($thisgrp);
		
		$delButton = "
			<form name=delete action=\"{$_SERVER['PHP_SELF']}\" method=POST>
				<input type=\"hidden\" name=\"display\" value=\"{$dispnum}\">
				<input type=\"hidden\" name=\"account\" value=\"".ltrim($extdisplay,'GRP-')."\">
				<input type=\"hidden\" name=\"action\" value=\"delGRP\">
				<input type=submit value=\""._("Delete Entries")."\">
			</form>";
			
		echo "<h2>"._("Follow Me").": ".ltrim($extdisplay,'GRP-')."</h2>";


		// Copied straight out of old code,let's see if it works?
		//
		if (isset($amp_conf["AMPEXTENSIONS"]) && ($amp_conf["AMPEXTENSIONS"] == "deviceanduser")) {
			$editURL = $_SERVER['PHP_SELF'].'?display=users&extdisplay='.ltrim($extdisplay,'GRP-');
			$EXTorUSER = "User";
		}
		else {
			$editURL = $_SERVER['PHP_SELF'].'?display=extensions&extdisplay='.ltrim($extdisplay,'GRP-');
			$EXTorUSER = "Extension";
		}

		echo "<p><a href=".$editURL."> Edit ".$EXTorUSER." ".ltrim($extdisplay,'GRP-')."</a></p>";
		echo "<p>".$delButton."</p>";
	} 
	?>
			<form name="editGRP" action="<?php  $_SERVER['PHP_SELF'] ?>" method="post" onsubmit="return checkGRP(editGRP);">
			<input type="hidden" name="display" value="<?php echo $dispnum?>">
			<input type="hidden" name="action" value="<?php echo ($extdisplay ? 'edtGRP' : 'addGRP'); ?>">
			<table>
			<tr><td colspan="2"><h5><?php  echo ($extdisplay ? _("Edit Follow Me") : _("Add Follow Me")) ?><hr></h5></td></tr>
			<tr>
<?php
	if ($extdisplay) { 

?>
				<input size="5" type="hidden" name="account" value="<?php  echo ltrim($extdisplay,'GRP-'); ?>">
<?php 		} else { ?>
				<td><a href="#" class="info"><?php echo _("group number")?>:<span><?php echo _("The number users will dial to ring extensions in this ring group")?></span></a></td>
				<td><input size="5" type="text" name="account" value="<?php  echo $gresult[0] + 1; ?>"></td>
<?php 		} ?>
			</tr>

			<tr>
				<td><a href="#" class="info"><?php echo _("Disable")?><span><?php echo _('By default (not checked) any call to this extension will go to this Follow-Me instead, including directory calls by name from IVRs. If checked, calls will go only to the extension.<BR>However, destinations that specify FollowMe will come here.<BR>Checking this box is often used in conjunction with VmX Locater, where you want a call to ring the extension, and then only if the caller chooses to find you do you want it to come here.')?></span></a>:</td>
				<td><input type="checkbox" name="ddial" value="CHECKED" <?php echo $ddial ?>   tabindex="<?php echo ++$tabindex;?>"/></td>
			</tr>

			<tr>
				<td><a href="#" class="info"><?php echo _("Initial Ring Time:")?>
				<span><?php echo _("This is the number of seconds to ring the primary extension prior to proceeding to the follow-me list. The extension can also be included in the follow-me list. A 0 setting will bypass this.")?>
				</span></a>
				</td>
				<td>
					<select name="pre_ring" tabindex="<?php echo ++$tabindex;?>">
					<?php
						$default = (isset($pre_ring) ? $pre_ring : 0);
						for ($i=0; $i <= 60; $i++) {
							echo '<option value="'.$i.'" '.($i == $default ? 'SELECTED' : '').'>'.$i.'</option>';
						}
					?>
					</select>
				</td>
			</tr>

			<tr>
				<td>
				<a href="#" class="info"><?php echo _("Ring Strategy:")?>
				<span>
					<b><?php echo _("ringallv2")?></b>:  <?php echo _("ring primary extension for initial ring time followed by all additional extensions until one answers")?><br>
					<b><?php echo _("ringall")?></b>:  <?php echo _("ring all available channels until one answers (default)")?><br>
					<b><?php echo _("hunt")?></b>: <?php echo _("take turns ringing each available extension")?><br>
					<b><?php echo _("memoryhunt")?></b>: <?php echo _("ring first extension in the list, then ring the 1st and 2nd extension, then ring 1st 2nd and 3rd extension in the list.... etc.")?><br>
					<b><?php echo _("*-prim")?></b>:  <?php echo _("these modes act as described above. However, if the primary extension (first in list) is occupied, the other extensions will not be rung. If the primary is freepbx DND, it won't be run. If the primary is freepbx CF unconditional, then all will be rung")?><br>
					<b><?php echo _("firstavailable")?></b>:  <?php echo _("ring only the first available channel")?><br>
					<b><?php echo _("firstnotonphone")?></b>:  <?php echo _("ring only the first channel which is not offhook - ignore CW")?><br>
				</span>
				</a>
				</td>
				<td>
					<select name="strategy" tabindex="<?php echo ++$tabindex;?>">
					<?php
						$default = (isset($strategy) ? $strategy : 'ringall');
                                                $items = array('ringallv2','ringallv2-prim','ringall','ringall-prim','hunt','hunt-prim','memoryhunt','memoryhunt-prim','firstavailable','firstnotonphone');
						foreach ($items as $item) {
							echo '<option value="'.$item.'" '.($default == $item ? 'SELECTED' : '').'>'._($item);
						}
					?>		
					</select>
				</td>
			</tr>

			<tr>
				<td>
					<a href=# class="info"><?php echo _("Ring Time (max 60 sec)")?>
						<span>
							<?php echo _("Time in seconds that the phones will ring. For all hunt style ring strategies, this is the time for each iteration of phone(s) that are rung")?>
						</span>
					</a>
				</td>
				<td><input size="4" type="text" name="grptime" value="<?php  echo $grptime?$grptime:20 ?>" tabindex="<?php echo ++$tabindex;?>"></td>
			</tr>

			<tr>
				<td valign="top"><a href="#" class="info"><?php echo _("Follow-Me List")?>:<span><br><?php echo _("List extensions to ring, one per line, or use the Extension Quick Pick below.<br><br>You can include an extension on a remote system, or an external number by suffixing a number with a pound (#).  ex:  2448089# would dial 2448089 on the appropriate trunk (see Outbound Routing).")?><br><br></span></a></td>
				<td valign="top">
<?php
		$rows = count($grplist)+1; 
		if ($rows <= 2 && trim($grplist[0]) == "") {
			$grplist[0] = ltrim($extdisplay,'GRP-');
		}
		($rows < 5) ? 5 : (($rows > 20) ? 20 : $rows);
?>
					<textarea id="grplist" cols="15" rows="<?php  echo $rows ?>" name="grplist" tabindex="<?php echo ++$tabindex;?>"><?php echo implode("\n",$grplist);?></textarea>
				</td>
			</tr>

			<tr>
				<td>
				<a href=# class="info"><?php echo _("Extension Quick Pick")?>
					<span>
						<?php echo _("Choose an extension to append to the end of the extension list above.")?>
					</span>
				</a>
				</td>
				<td>
					<select onChange="insertExten();" id="insexten" tabindex="<?php echo ++$tabindex;?>">
						<option value=""><?php echo _("(pick extension)")?></option>
	<?php
						$results = core_users_list();
						foreach ($results as $result) {
							echo "<option value='".$result[0]."'>".$result[0]." (".$result[1].")</option>\n";
						}
	?>
					</select>
				</td>
			</tr>

<?php if(function_exists('recordings_list')) { //only include if recordings is enabled?>
			<tr>
				<td><a href="#" class="info"><?php echo _("Announcement:")?><span><?php echo _("Message to be played to the caller before dialing this group.<br><br>To add additional recordings please use the \"System Recordings\" MENU to the left")?></span></a></td>
				<td>
					<select name="annmsg" tabindex="<?php echo ++$tabindex;?>">
					<?php
						$tresults = recordings_list();
						$default = (isset($annmsg) ? $annmsg : '');
						echo '<option value="">'._("None");
						if (isset($tresults)) {
							foreach ($tresults as $tresult) {
								echo '<option value="'.$tresult[2].'"'.($tresult[2] == $default ? ' SELECTED' : '').'>'.$tresult[1];
							}
						}
					?>		
					</select>		
				</td>
			</tr>
<?php }	else { ?>
			<tr>
				<td><a href="#" class="info"><?php echo _("Announcement:")?><span><?php echo _("Message to be played to the caller before dialing this group.<br><br>You must install and enable the \"Systems Recordings\" Module to edit this option")?></span></a></td>
				<td>
					<?php
						$default = (isset($annmsg) ? $annmsg : '');
					?>
					<input type="hidden" name="annmsg" value="<?php echo $default; ?>"><?php echo ($default != '' ? $default : 'None'); ?>
				</td>
			</tr>

<?php } if (function_exists('music_list')) { ?>
			<tr>
				<td><a href="#" class="info"><?php echo _("Play Music On Hold?")?><span><?php echo _("If you select a Music on Hold class to play, instead of 'Ring', they will hear that instead of Ringing while they are waiting for someone to pick up.")?></span></a></td>
				<td>
					<select name="ringing" tabindex="<?php echo ++$tabindex;?>">
					<?php
						$tresults = music_list($amp_conf['ASTVARLIBDIR']."/mohmp3");
						$cur = (isset($ringing) ? $ringing : 'Ring');
						echo '<option value="Ring">'._("Ring")."</option>";
						if (isset($tresults[0])) {
							foreach ($tresults as $tresult) {
								echo '<option value="'.$tresult.'"'.($tresult == $cur ? ' SELECTED' : '').'>'.$tresult."</option>\n";
							}
						}
					?>
					</select>
					</td>
				</tr>
<?php } ?>

			<tr>
				<td><a href="#" class="info"><?php echo _("CID Name Prefix")?>:<span><?php echo _('You can optionally prefix the Caller ID name when ringing extensions in this group. ie: If you prefix with "Sales:", a call from John Doe would display as "Sales:John Doe" on the extensions that ring.')?></span></a></td>
				<td><input size="4" type="text" name="grppre" value="<?php  echo $grppre ?>" tabindex="<?php echo ++$tabindex;?>"></td>
			</tr>

			<tr>
				<td><a href="#" class="info"><?php echo _("Alert Info")?>:<span><?php echo _('You can optionally include an Alert Info which can create distinctive rings on SIP phones.')?></span></a></td>
				<td><input size="18" type="text" name="dring" value="<?php  echo $dring ?>" tabindex="<?php echo ++$tabindex;?>"></td>
			</tr>

			<tr>
				<td><a href="#" class="info"><?php echo _("Confirm Calls")?><span><?php echo _('Enable this if you\'re calling external numbers that need confirmation - eg, a mobile phone may go to voicemail which will pick up the call. Enabling this requires the remote side push 1 on their phone before the call is put through. This feature only works with the ringall/ringall-prim  ring strategy')?></span></a>:</td>
				<td> 
					<input type="checkbox" name="needsconf" value="CHECKED" <?php echo $needsconf ?>   tabindex="<?php echo ++$tabindex;?>"/>
				</td>
			</tr>

<?php if(function_exists('recordings_list')) { //only include if recordings is enabled?>
			<tr>
				<td><a href="#" class="info"><?php echo _("Remote Announce:")?><span><?php echo _("Message to be played to the person RECEIVING the call, if 'Confirm Calls' is enabled.<br><br>To add additional recordings use the \"System Recordings\" MENU to the left")?></span></a></td>
				<td>
					<select name="remotealert" tabindex="<?php echo ++$tabindex;?>">
					<?php
						$tresults = recordings_list();
						$default = (isset($remotealert) ? $remotealert : '');
						echo '<option value="">'._("Default")."</option>";
						if (isset($tresults[0])) {
							foreach ($tresults as $tresult) {
								echo '<option value="'.$tresult[2].'"'.($tresult[2] == $default ? ' SELECTED' : '').'>'.$tresult[1]."</option>\n";
							}
						}
					?>
					</select>
				</td>
			</tr>
			<tr>
				<td><a href="#" class="info"><?php echo _("Too-Late Announce:")?><span><?php echo _("Message to be played to the person RECEIVING the call, if the call has already been accepted before they push 1.<br><br>To add additional recordings use the \"System Recordings\" MENU to the left")?></span></a></td>
				<td>
				<select name="toolate" tabindex="<?php echo ++$tabindex;?>">
					<?php
						$tresults = recordings_list();
						$default = (isset($toolate) ? $toolate : '');
						echo '<option value="">'._("Default")."</option>";
						if (isset($tresults[0])) {
							foreach ($tresults as $tresult) {
								echo '<option value="'.$tresult[2].'"'.($tresult[2] == $default ? ' SELECTED' : '').'>'.$tresult[1]."</option>\n";
							}
						}
					?>
					</select>
				</td>
			</tr>
<?php } ?>
			
			<tr><td colspan="2"><br><h5><?php echo _("Destination if no answer")?>:<hr></h5></td></tr>

<?php 
//draw goto selects
echo drawselects($goto,0);
?>
			
			<tr>
			<td colspan="2"><br><h6><input name="Submit" type="submit" value="<?php echo _("Submit Changes")?>" tabindex="<?php echo ++$tabindex;?>"></h6></td>		
			
			</tr>
			</table>
			</form>
<?php 		
		} //end if action == delGRP
		
?>
<script language="javascript">
<!--

function insertExten() {
	exten = document.getElementById('insexten').value;

	grpList=document.getElementById('grplist');
	if (grpList.value[ grpList.value.length - 1 ] == "\n") {
		grpList.value = grpList.value + exten;
	} else {
		grpList.value = grpList.value + '\n' + exten;
	}

	// reset element
	document.getElementById('insexten').value = '';
}

function checkGRP(theForm) {
	var msgInvalidGrpNum = "<?php echo _('Invalid Group Number specified'); ?>";
	var msgInvalidExtList = "<?php echo _('Please enter an extension list.'); ?>";
	var msgInvalidGrpPrefix = "<?php echo _('Invalid prefix. Valid characters: a-z A-Z 0-9 : _ -'); ?>";
	var msgInvalidTime = "<?php echo _('Invalid time specified'); ?>";
	var msgInvalidGrpTimeRange = "<?php echo _('Time must be between 1 and 60 seconds'); ?>";
	var msgInvalidRingStrategy = "<?php echo _('Only ringall, ringallv2, hunt and the respective -prim versions are supported when confirmation is checked'); ?>";



	// set up the Destination stuff
	setDestinations(theForm, 1);

	// form validation
	defaultEmptyOK = false;	
	if (isEmpty(theForm.grplist.value))
		return warnInvalid(theForm.grplist, msgInvalidExtList);

	defaultEmptyOK = false;
	if (!isInteger(theForm.grptime.value)) {
		return warnInvalid(theForm.grptime, msgInvalidTime);
	} else {
		var grptimeVal = theForm.grptime.value;
		if (grptimeVal < 1 || grptimeVal > 60)
			return warnInvalid(theForm.grptime, msgInvalidGrpTimeRange);
	}

	if (theForm.needsconf.checked && (theForm.strategy.value.substring(0,7) != "ringall" && theForm.strategy.value.substring(0,4) != "hunt")) {
		return warnInvalid(theForm.needsconf, msgInvalidRingStrategy);
	}

	defaultEmptyOK = true;
	if (!isPrefix(theForm.grppre.value))
		return warnInvalid(theForm.grppre, msgInvalidGrpPrefix);

	if (!validateDestinations(theForm, 1, true))
		return false;

	return true;
}
//-->
</script>

