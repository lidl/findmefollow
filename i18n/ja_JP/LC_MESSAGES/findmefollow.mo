Þ    T      ¼  q   \            !     2  
   9  *   D  ±  o     !	     1	  (   Q	  !   z	  '   	  E   Ä	     

     
      
  -  9
  	   g     q               «  	   J     T     b     q               «     »  h   Q     º    Ñ     è  ¦   ~  Á   %     ç     ì     ñ  j        v          ´     ¹  ¾   Ð       %        B    Þ    î  2   ú     -     ?     D  Z   W  È   ²     {          ²     Ì     Ý     õ          +     7     F     V     [  
   {               »     Õ  	   é     ó               2     5  %   µ  =   Û       	   !  +   +  ü   W  ¹  T                '  *   :    e     ÿ        ?   1      q   ,      Q   ´      !     !     )!  á  B!     $#  $   +#  -   P#     ~#  ò   #     $     $     «$  "   Ç$     ê$  6   %  '   =%  æ   e%     L&  '   ë&  Ð  '  Í   ä(  ê   ²)  þ   *  	   +     ¦+     ­+  ¤   Ã+     h,  -   ,  	   µ,      ¿,  ë   à,     Ì-  6   W.  ·   .  n  F/  z  µ0  Z   02  $   2     °2     ½2  {   Ì2  >  H3  &   4  +   ®4  '   Ú4     5  )   5  .   95  *   h5     5     ©5  !   ¿5  	   á5  <   ë5     (6     >6  !   Y6     {6      6  	   º6  !   Ä6  &   æ6  "   7     07  ¿   37  6   ó7     *8     ¬8     ¿8  6   Ô8  N  9     >   L                  E       0   S   6      9      .   +   5   !           2   R   (   O          J          %   G          K      1                         D   T   	       7   8   B       '   C      "                 3      F   N   @   I       ?       $                    #   M       *   )   P   :       ,   =         Q   
                   H      <   /      A   &   ;         4                -                     (pick extension) *-prim Alert Info Always transmit the Fixed CID Value below. By default (not checked) any call to this extension will go to this Follow-Me instead, including directory calls by name from IVRs. If checked, calls will go only to the extension.<BR>However, destinations that specify FollowMe will come here.<BR>Checking this box is often used in conjunction with VmX Locater, where you want a call to ring the extension, and then only if the caller chooses to find you do you want it to come here. CID Name Prefix Call Confirmation Configuration Cannot connect to Asterisk Manager with  Change External CID Configuration Checking if recordings need migration.. Choose an extension to append to the end of the extension list above. Confirm Calls Default Destination if no answer Enable this if you're calling external numbers that need confirmation - eg, a mobile phone may go to voicemail which will pick up the call. Enabling this requires the remote side push 1 on their phone before the call is put through. This feature only works with the ringall/ringall-prim  ring strategy Extension Extension Quick Pick Findme Follow Toggle Fixed CID Value Fixed value to replace the CID with used with some of the modes above. Should be in a format of digits only with an option of E164 format using a leading "+". Follow Me Follow Me: %s Follow-Me List Follow-Me User: %s Follow-Me: %s (%s) Force Dialed Number Force Follow Me If you select a Music on Hold class to play, instead of 'Ring', they will hear that instead of Ringing while they are waiting for someone to pick up. Invalid CID Number. Must be in a format of digits only with an option of E164 format using a leading "+" Invalid time specified List extensions to ring, one per line, or use the Extension Quick Pick below.<br><br>You can include an extension on a remote system, or an external number by suffixing a number with a pound (#).  ex:  2448089# would dial 2448089 on the appropriate trunk (see Outbound Routing). Message to be played to the caller before dialing this group.<br><br>To add additional recordings please use the "System Recordings" MENU to the left Message to be played to the person RECEIVING the call, if 'Confirm Calls' is enabled.<br><br>To add additional recordings use the "System Recordings" MENU to the left Message to be played to the person RECEIVING the call, if the call has already been accepted before they push 1.<br><br>To add additional recordings use the "System Recordings" MENU to the left Mode None Normal Extension Behavior Only ringall, ringallv2, hunt and the respective -prim versions are supported when confirmation is checked Outside Calls Fixed CID Value Please enter an extension list. Ring Ring Time (max 60 sec) This is the number of seconds to ring the primary extension prior to proceeding to the follow-me list. The extension can also be included in the follow-me list. A 0 setting will bypass this. Time in seconds that the phones will ring. For all hunt style ring strategies, this is the time for each iteration of phone(s) that are rung Time must be between 1 and 60 seconds Transmit the Fixed CID Value below on calls that come in from outside only. Internal extension to extension calls will continue to operate in default mode. Transmit the number that was dialed as the CID for calls coming from outside. Internal extension to extension calls will continue to operate in default mode. There must be a DID on the inbound route for this. This WILL be transmitted on trunks that block foreign CallerID Transmit the number that was dialed as the CID for calls coming from outside. Internal extension to extension calls will continue to operate in default mode. There must be a DID on the inbound route for this. This will be BLOCKED on trunks that block foreign CallerID Transmits the Callers CID if allowed by the trunk. Use Dialed Number User Warning! Extension You can optionally include an Alert Info which can create distinctive rings on SIP phones. You can optionally prefix the Caller ID name when ringing extensions in this group. ie: If you prefix with "Sales:", a call from John Doe would display as "Sales:John Doe" on the extensions that ring. adding annmsg_id field.. adding remotealert_id field.. adding toolate_id field.. already migrated dropping annmsg field.. dropping remotealert field.. dropping toolate field.. fatal error firstavailable firstnotonphone hunt is not allowed for your account memoryhunt migrate annmsg to ids.. migrate remotealert to ids.. migrate toolate to  ids.. migrated %s entries migrating no annmsg field??? no remotealert field??? no toolate field??? ok ring first extension in the list, then ring the 1st and 2nd extension, then ring 1st 2nd and 3rd extension in the list.... etc. ring only the first available channel ring only the first channel which is not off hook - ignore CW ringall ringallv2 take turns ringing each available extension these modes act as described above. However, if the primary extension (first in list) is occupied, the other extensions will not be rung. If the primary is FreePBX DND, it won't be rung. If the primary is FreePBX CF unconditional, then all will be rung Project-Id-Version: FreePBX 2.10.0.8
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-08-11 17:00-0700
PO-Revision-Date: 2014-02-21 03:21+0200
Last-Translator: Kenichi Fukaumi <k.fukaumi@qloog.com>
Language-Team: Japanese <http://192.168.30.85/projects/freepbx/findmefollow/ja/>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: ja
Plural-Forms: nplurals=1; plural=0;
X-Generator: Weblate 1.8
 (åç·ãé¸æ) *-prim ã¢ã©ã¼ãæå ± å¸¸ã«ä»¥ä¸ã®åºå®ã®CIDå¤ãæ¸¡ãã ããã©ã«ãã§ã¯ãï¼ãã§ãã¯ããã¦ããªãï¼ããã®åç·ã¸ã®ã³ã¼ã«ã¯ãIVRããã®ååã®ãã£ã¬ã¯ããªå¼ã³åºããå«ã¿ãä»£ããã«ãã®ãã©ã­ã¼ãã¼ã«çä¿¡ãã¾ãããã§ãã¯ãããå ´åãã³ã¼ã«ã¯åç·ã«çä¿¡ããã®ã¿ã¨ãªãã¾ãã<BR>ããããªããããã©ã­ã¼ãã¼ãç¹å®ããå®åã¯ããã«æ¥ã¾ãã<BR>ãã®ãã§ãã¯ããã¯ã¹ããªã³ã«ããå ´åã¯ãåç·ã«çä¿¡ããããVmXã­ã±ã¼ã¿âã¨ä¸ç·ã«ããä½¿ç¨ãããããã¯çºä¿¡èãããªããçºè¦ãããã¨ãé¸æããããªããããã«å¿ãããå ´åã®ã¿ä½¿ç¨ããã¾ãã CIDåããªãã£ãã¯ã¹ ã³ã¼ã«ç¢ºèªè¨­å® ã¢ã¹ã¿ãªã¹ã¯ããã¼ã¸ã£ã¼ã«æ¥ç¶ã§ãã¾ããã å¤é¨CIDè¨­å®å¤æ´ é²é³ã®ç§»è¡ãå¿è¦ããã§ãã¯ä¸­.. ä¸è¨åç·ãªã¹ãã®æå¾ã«è¿½å ããåç·ãé¸æãã¦ãã ããã ã³ã¼ã«ãç¢ºèª ããã©ã«ã å¿ç­ãªãæã®å®å ããããªããç¢ºèªãå¿è¦ãªå¤ç·ã«çºä¿¡ããå ´åããã®ãªãã·ã§ã³ãæå¹ã«ãã¾ãã - ä¾ãæºå¸¯é»è©±ã®å ´åãçä¿¡ãæ¾ã£ã¦ãã¤ã¹ã¡ã¼ã«ã«ãªãã¾ãããã®ãªãã·ã§ã³ãæå¹ã«ãããã¨ã«ãããçºä¿¡èã«å¯¾ãã¦ã³ã¼ã«ããã¤ã¹ã¡ã¼ã«ã«ãªãåã«1ãã¿ã³ãæ¼ãããã«è¦æ±ããããã«ãªãã¾ãããã®æ©è½ã¯ãªã³ã°ãªã¼ã«/ãªã³ã°ãªã¼ã«-ã¡ã¤ã³ è¨ç»ã§ã®ã¿åä½ãã¾ãã åç· åç·ã¯ã¤ãã¯ããã¯ã¢ãã ãã¡ã¤ã³ããã¼ãã©ã­ã¼åãæ¿ã åºå®ã®CIDå¤ ä¸è¨ã¢ã¼ãã®ãã¡ãããã¤ãã¨ã¨ãã«ä½¿ç¨ãããçºä¿¡èçªå·ãç½®ãæããåºå®å¤ãåé ­ã« "+"ãã¤ããE164ãã©ã¼ããããªãã·ã§ã³ã¨æ°å­ã®ã¿ã®ãã©ã¼ãããã§ããå¿è¦ãããã¾ãã ãã©ã­ã¼ãã¼ ãã©ã­ã¼ãã¼: %s ãã©ã­ã¼ãã¼ãªã¹ã ãã©ã­ã¼ãã¼ã¦ã¼ã¶ã¼: %s ãã©ã­ã¼ãã¼: %s (%s) å¼·å¶çã«ãã¤ã¤ã«ãããçªå·ãä½¿ç¨ãã å¼·å¶çã«ãã©ã­ã¼ãã¼ãè¡ã ãã'ãªã³ã°'ã®ä»£ããã«ä¿çé³ã¯ã©ã¹ãåçããããã«é¸æããå ´åãèª°ããé»è©±ãåãã®ãå¾ã£ã¦ããéããªã³ã°é³ã®ä»£ããã«ä¿çé³ã¯ã©ã¹ãèãããããã«ãªãã¾ãã ç¡å¹ãªçºä¿¡èçªå·ãåé ­ã« "+"ãã¤ããE164ãã©ã¼ããããªãã·ã§ã³ã¨æ°å­ã®ã¿ã®ãã©ã¼ãããã§ãªããã°ããã¾ããã ç¡å¹ãªæéãæå®ããã¾ãã 1åç·ã«ã¤ãã1ã¤çä¿¡ãããåç·ããªã¹ãã¢ãããã¦ãã ããããããã¯ä»¥ä¸ã®åç·ã¯ã¤ãã¯ããã¯ãä½¿ç¨ãã¦ãã ããã<br><br>æ«å°¾ã«ã·ã£ã¼ãè¨å·(#)ãã¤ãããã¨ã«ããããªã¢ã¼ãã·ã¹ãã ä¸ã®åç·ããããã¯å¤ç·çªå·ãå«ãããã¨ãã§ãã¾ããä¾:2448089# ã¯é©åãªãã©ã³ã¯ä¸ã§ï¼ã¢ã¦ããã¦ã³ãã«ã¼ãã£ã³ã°ãåç§ï¼ 2448089 ããã¤ã¤ã«ãã¾ãã ãã®ã°ã«ã¼ãã«ãã¤ã¤ã«ããåã«çºä¿¡èã«åçãããã¡ãã»ã¼ã¸ã<br><br>è¿½å ã§é²é³ãããå ´åã¯ã¡ãã¥ã¼å·¦å´ã«ãã"ã·ã¹ãã é²é³"ãä½¿ç¨ãã¦ãã ãã ãã'ã³ã¼ã«ãç¢ºèª'ãæå¹ãªå ´åã«ãã³ã¼ã«ãçä¿¡ããäººã«å¯¾ãã¦åçããã¡ãã»ã¼ã¸ã§ãã<br><br>é²é³ãè¿½å ããã«ã¯ãã¡ãã¥ã¼å·¦å´ã®"ã·ã¹ãã é²é³"ãä½¿ç¨ãã¦ãã ããã 1ãæ¼ãããåã«ã³ã¼ã«ãæ¢ã«åãä»ããããå ´åã«ãã³ã¼ã«ãçä¿¡ããäººã«å¯¾ãã¦åçããã¡ãã»ã¼ã¸ã§ãã<br><br>é²é³ãè¿½å ããã«ã¯ãã¡ãã¥ã¼å·¦å´ã®"ã·ã¹ãã é²é³"ãä½¿ç¨ãã¦ãã ãã ã¢ã¼ã ãªã éå¸¸ã®åç·åä½ 'ç¢ºèª'ããã§ãã¯ããã¦ããå ´åã¯ããªã³ã°ãªã¼ã«ããªã³ã°ãªã¼ã«v2ããã³ãã¨å *-primãã¼ã¸ã§ã³ã®ã¿ããµãã¼ãããã¾ã å¤é¨ã³ã¼ã«ã®åºå®CIDå¤ åç·ãªã¹ããå¥åãã¦ãã ããã ãªã³ã° ãªã³ã°ã¿ã¤ã  (æå¤§60ç§) ããã¯ãã©ã­ã¼ãã¼ãªã¹ãã«é²ãã«åç«ã£ã¦ä¸»åç·ã®çä¿¡ãé³´ããç§æ°ã§ãããã©ã­ã¼ãã¼ãªã¹ãåã«ãã®åç·ãå«ãããã¨ãã§ãã¾ãã0ãè¨­å®ããã¨ããã¯åé¿ããã¾ãã é»è©±ãé³´ãç§æ°ãå¨ã¦ã®ãã³ãå½¢å¼ã®ãªã³ã°ã«ã¼ã«ã«ã¨ã£ã¦ãããããã®é»è©±ãåå¾©ãã¦é³´ãæéã§ã æéã¯1ç§ï½60ç§ã§ãªããã°ããã¾ããã å¤ç·ããçä¿¡ããã³ã¼ã«ã®ã¿ä»¥ä¸ã®åºå®ã®çºä¿¡èçªå·å¤ãè»¢éãã¾ããåé¨ã®åç·ééè©±ã§ã¯å¼ãç¶ãããã©ã«ãã¢ã¼ãã§åä½ãã¾ãã å¤ç·ããçä¿¡ããã³ã¼ã«ã§CIDçªå·ã¨ãã¦ãã¤ã¤ã«ãããçªå·ãè»¢éãã¾ããåé¨ã®åç·ééè©±ã§ã¯å¼ãç¶ãããã©ã«ãã¢ã¼ãã§åä½ãã¾ãããã®çºã«ã¯ã¤ã³ãã¦ã³ãã«ã¼ãä¸ã§DIDçªå·ãå¿è¦ã¨ãªãã¾ããããã¯å¤é¨ã®çºä¿¡èçªå·ããã­ãã¯ãããã©ã³ã¯ã§ãè»¢éããã¾ãã å¤ç·ããçä¿¡ããã³ã¼ã«ã§çºä¿¡èçªå·ã¨ãã¦ãã¤ã¤ã«ãããçªå·ãè»¢éãã¾ããåé¨ã®åç·ééè©±ã§ã¯å¼ãç¶ãããã©ã«ãã¢ã¼ãã§åä½ãã¾ããã¤ã³ãã¦ã³ãã«ã¼ãä¸ã§ãã¤ã¤ã«ã¤ã³çªå·ãå¿è¦ã¨ãªãã¾ããæµ·å¤ã®çºä¿¡èçªå·ããã­ãã¯ãããã©ã³ã¯ã§ã¯ããããã­ãã¯ããã¾ãã ãã©ã³ã¯ã«ãã£ã¦è¨±å¯ããã¦ããå ´åã«çºä¿¡èçªå·ãè»¢éãã¾ãã ãã¤ã¤ã«ãããçªå·ãä½¿ç¨ ã¦ã¼ã¶ã¼ è­¦å! åç· å¿è¦ã«å¿ãã¦ãSIPé»è©±æ©ä¸ã§ã¢ã©ã¼ãæå ±ãå«ãã¦ç¬ç¹ã®çä¿¡ãä½æãããã¨ãã§ãã¾ãã ãã®ã°ã«ã¼ãåã®åç·ãçä¿¡ãï½ãéã«ããªãã·ã§ã³ã§çºä¿¡èçªå·ã«ããªãã£ãã¯ã¹ãä»ãããã¨ãã§ãã¾ããä¾:ãã"å¶æ¥­:"ã¨ããããªãã£ãã¯ã¹ãã¤ããã°ã"æ£®å­ä»"ããã®ã³ã¼ã«ã¯çä¿¡ããåç·é»è©±ã«"å¶æ¥­:æ£®å­ä»"ã¨è¡¨ç¤ºããã¾ãã annmsg_idãã£ã¼ã«ããè¿½å ä¸­.. remotealert_idãã£ã¼ã«ããè¿½å ä¸­.. toolate_idãã£ã¼ã«ããè¿½å ä¸­.. ç§»è¡æ¸ã¿ annmsgãã£ã¼ã«ãããã­ããä¸­.. remotealertãã£ã¼ã«ãããã­ããä¸­.. toolateãã£ã¼ã«ãããã­ããä¸­.. è´å½çãªã¨ã©ã¼ å©ç¨å¯è½ãªæå é»è©±ä¸­ã§ãªãæåã®ãã® ãã³ã ã¯ããªãã®ã¢ã«ã¦ã³ãã«è¨±å¯ããã¦ãã¾ãã ã¡ã¢ãªã¼ãã³ã annmsgãidsã«ç§»è¡ä¸­.. remotealert ã idsã«ç§»è¡ä¸­.. toolate ã idsã«ç§»è¡ä¸­.. %sã¨ã³ããªã¼ãç§»è¡ãã ç§»è¡ä¸­ annmsgãã£ã¼ã«ããç¡ã??? remotealertãã£ã¼ã«ããç¡ã??? toolateãã£ã¼ã«ããç¡ã??? ok æåã«ãªã¹ãä¸­ã®1çªç®ã®åç·ãé³´ããã¾ããæ¬¡ã«ä¸çªç®ã¨äºçªç®ã®åç·ãé³´ããã¾ããæ¬¡ã«ä¸çªç®ãäºçªç®ãä¸çªç®ã®åç·ãé³´ããã¾ã....ã å©ç¨å¯è½ãªæåã®ãã£ãã«ã®ã¿é³´ãã¾ã ãªãããã¯ç¶æã§ãªãæåã®ãã£ãã«ã®ã¿é³´ããã¾ãã - ã³ã¼ã«ã¦ã§ã¤ãã¤ã³ã°ã¯ç¡è¦ããã¾ã ãªã³ã°ãªã¼ã« ãªã³ã°ãªã¼ã«v2 å©ç¨å¯è½ãªåç·ãé çªã«çä¿¡ããã¾ãã ãã®ã¢ã¼ãã¯ä¸è¨ã¨åããããªæåããã¾ãããã¡ã¤ã³ã®åç·(ãªã¹ãä¸­ã®æåã®åç·)ãå æããã¦ããå ´åãä»ã®åç·ã¯é³´ãã¾ãããããã¡ã¤ã³ãFreePBX DND(do not disturb)ã®å ´åã¯é³´ãã¾ãããããã¡ã¤ã³ãFreePBX ç¡æ¡ä»¶è»¢éã®å ´åãå¨ã¦ãé³´ãã¾ãã 