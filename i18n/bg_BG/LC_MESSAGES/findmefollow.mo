��    S      �  q   L                "  
   )  *   4     _  �  l     	     .	  (   N	  !   w	  '   �	  E   �	     
     
     
  -  6
  	   d     n     �     �  �   �  	   G     Q     `     s     �     �  �   �  h   @     �    �  �   �  �   m  �        �     �  j   �     K     i     �     �  �   �  �   d  %   �  �       �    �  2   �                 Z   ,  �   �     P     i     �     �     �     �     �                     +     0  
   P     [     s     �     �  	   �     �     �     �          
  %   �  =   �     �  	   �  +      �   ,    )  *   D     o  &   �  R   �     �  �       �!  N   �!  D   "  <   V"  \   �"  s   �"  '   d#     �#  :   �#  b  �#     H&  <   d&  &   �&     �&    �&     �'      (     ,(     D(  G   a(  ,   �(  	  �(  �   �)  0   �*  E  �*  .  -  G  6.  h  ~/  
   �0     �0  �   �0  =   �1  H   �1     32  6   B2  X  y2  +  �3  6   �4    55  �  D6  �  �7  n   �9  .   :     B:  -   W:     �:  �  ;  *   �<  /   �<  +   �<  "   =  +   :=  0   f=  ,   �=     �=     �=  '   �=     &>  7   =>  ,   u>  .   �>  3   �>  /   ?  ,   5?     b?     y?      �?     �?     �?  �   �?  A   �@  h   A     vA  +   �A  \   �A  �  B     =   K       	           D       /   R   5   I   8      -   *   4   !           1   Q   '   N                     %   F          A      0                         C   S   
          7   6       &   B      "                 2      E   M       H   J   >       $                    #   L       )   (   O   9       +   <         P                      G      ;   .      @   ?   :         3                ,                     (pick extension) *-prim Alert Info Always transmit the Fixed CID Value below. Announcement By default (not checked) any call to this extension will go to this Follow-Me instead, including directory calls by name from IVRs. If checked, calls will go only to the extension.<BR>However, destinations that specify FollowMe will come here.<BR>Checking this box is often used in conjunction with VmX Locater, where you want a call to ring the extension, and then only if the caller chooses to find you do you want it to come here. CID Name Prefix Call Confirmation Configuration Cannot connect to Asterisk Manager with  Change External CID Configuration Checking if recordings need migration.. Choose an extension to append to the end of the extension list above. Confirm Calls Default Destination if no answer Enable this if you're calling external numbers that need confirmation - eg, a mobile phone may go to voicemail which will pick up the call. Enabling this requires the remote side push 1 on their phone before the call is put through. This feature only works with the ringall/ringall-prim  ring strategy Extension Extension Quick Pick Findme Follow Toggle Fixed CID Value Fixed value to replace the CID with used with some of the modes above. Should be in a format of digits only with an option of E164 format using a leading "+". Follow Me Follow-Me List Follow-Me User: %s Follow-Me: %s (%s) Force Dialed Number Force Follow Me If you select a Music on Hold class to play, instead of 'Ring', they will hear that instead of Ringing while they are waiting for someone to pick up. Invalid CID Number. Must be in a format of digits only with an option of E164 format using a leading "+" Invalid time specified List extensions to ring, one per line, or use the Extension Quick Pick below.<br><br>You can include an extension on a remote system, or an external number by suffixing a number with a pound (#).  ex:  2448089# would dial 2448089 on the appropriate trunk (see Outbound Routing). Message to be played to the caller before dialing this group.<br><br>To add additional recordings please use the "System Recordings" MENU to the left Message to be played to the person RECEIVING the call, if 'Confirm Calls' is enabled.<br><br>To add additional recordings use the "System Recordings" MENU to the left Message to be played to the person RECEIVING the call, if the call has already been accepted before they push 1.<br><br>To add additional recordings use the "System Recordings" MENU to the left Mode None Only ringall, ringallv2, hunt and the respective -prim versions are supported when confirmation is checked Outside Calls Fixed CID Value Please enter an extension list. Ring Ring Time (max 60 sec) This is the number of seconds to ring the primary extension prior to proceeding to the follow-me list. The extension can also be included in the follow-me list. A 0 setting will bypass this. Time in seconds that the phones will ring. For all hunt style ring strategies, this is the time for each iteration of phone(s) that are rung Time must be between 1 and 60 seconds Transmit the Fixed CID Value below on calls that come in from outside only. Internal extension to extension calls will continue to operate in default mode. Transmit the number that was dialed as the CID for calls coming from outside. Internal extension to extension calls will continue to operate in default mode. There must be a DID on the inbound route for this. This WILL be transmitted on trunks that block foreign CallerID Transmit the number that was dialed as the CID for calls coming from outside. Internal extension to extension calls will continue to operate in default mode. There must be a DID on the inbound route for this. This will be BLOCKED on trunks that block foreign CallerID Transmits the Callers CID if allowed by the trunk. Use Dialed Number User Warning! Extension You can optionally include an Alert Info which can create distinctive rings on SIP phones. You can optionally prefix the Caller ID name when ringing extensions in this group. ie: If you prefix with "Sales:", a call from John Doe would display as "Sales:John Doe" on the extensions that ring. adding annmsg_id field.. adding remotealert_id field.. adding toolate_id field.. already migrated dropping annmsg field.. dropping remotealert field.. dropping toolate field.. fatal error firstavailable firstnotonphone hunt is not allowed for your account memoryhunt migrate annmsg to ids.. migrate remotealert to ids.. migrate toolate to  ids.. migrated %s entries migrating no annmsg field??? no remotealert field??? no toolate field??? ok ring first extension in the list, then ring the 1st and 2nd extension, then ring 1st 2nd and 3rd extension in the list.... etc. ring only the first available channel ring only the first channel which is not off hook - ignore CW ringall ringallv2 take turns ringing each available extension these modes act as described above. However, if the primary extension (first in list) is occupied, the other extensions will not be rung. If the primary is FreePBX DND, it won't be rung. If the primary is FreePBX CF unconditional, then all will be rung Project-Id-Version: FreePBX v2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-07-24 18:03-0400
PO-Revision-Date: 2015-03-11 21:58+0200
Last-Translator: Chavdar <chavdar_75@yahoo.com>
Language-Team: Bulgarian <http://weblate.freepbx.org/projects/freepbx/findmefollow/bg_BG/>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: bg_BG
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 2.2-dev
X-Poedit-Language: Bulgarian
X-Poedit-Country: BULGARIA
X-Poedit-SourceCharset: utf-8
 (избери вътрешна линия) *-основна Информация за Сигнал Винаги предава Фиксиран CID определен по-долу. Съобщение По-подразбиране (немаркирано) всички обаждания към тази вътрешна линия ще отиват към този Следвай Ме, включително обаждания в директория по име от IVR. Ако е маркирано, обажданията ще отиват само към вътрешната линия.<BR>Обаче, направленията които са насочени към Следвай Ме ще идват тук.<BR>Маркирането на тази отметка често се използва съвместно с Гласова Поща VmX Намери Ме, при което искате обаждането да звъни на вътрешната линия, след което само ако обаждащият се избере да ви намери ще се прехвърли тук. Префикс на CID Име Настройки на Потвърждаване на Обажданията Не мога да се свържа с Астериск Manager с  Настройки за Промяна на Външен CID Проверка дали записите имат нужда от преместване.. Изберете вътрешна линия за поставяне в края на списъка по-горе. Потвърди Обажданията По-Подразбиране Направление ако не е отговорено Разрешете ако ви се обаждат външни номера които се нуждаят от потвърждение - например мобилен телефон може да отиде към гласовата поща която да отговори на обаждането. Разрешаването изисква от отсрещната страна да наберат 1 преди обаждането да се достави. Тази услуга работи само със звъни-на-всички/звъни-на-всички-основна стратегия Вътрешна Линия Бързо Избиране на Вътрешни Линии Превключи Следвай Ме Фиксиран CID Фиксирана стойност за замяна на CID с използването на някой от режимите по-горе. Трябва да е само от цифри с възможност за E164 формат с използване на водещ "+". Следвай Ме Следвай Ме Списък Следвай Ме: %s Следвай Ме: %s (%s) Принудително Използвай Избрания Номер Принудително Следвай Ме Ако изберете категория на Музика При Задържане за възпроизвеждане вместо Звънене, те ще чуват това вместо Звънене докато чакат някой да оговори. Неправилен CID Номер. Трябва да е само от цифри с възможност за E164 формат с използване на водещ \"+\" Неправилно въведено време Списък с вътрешни линии за звънене, една на линия, или използвайте Бързо Избиране на Вътрешни Линии по-долу за да ги добавите тук.<br><br>Можете да включите вътрешна линия от отдалечена система, или външен номер чрез добавяне на наставка '#'. Например:  2448089# ще избира 2448089 от съответната външна линия (виж Изходящи Маршрути). Съобщение което ще се възпроизведе на обаждащия се преди да се набере групата.<br><br>За да добавите допълнителни записи, моля използвайте Меню "Системни Записи" отляво Съобщение което ще се възпроизведе на  ПРИЕМАЩИЯ обаждането, ако Потвърди Обажданията е маркирано.<br><br>За да добавите допълнителни записи, моля използвайте Меню "Системни Записи" Съобщение което ще се възпроизведе на  ПРИЕМАЩИЯ обаждането, ако обаждането вече е било прието преди те да натиснат 1.<br><br>За да добавите допълнителни записи, моля използвайте Меню "Системни Записи" Режим Няма Само ringall, ringallv2, hunt и съответните -основна версии се поддържат когато е маркирано потвърждението Фиксиран CID за Изходящи Разговори Моля въведете списъка с вътрешни линии. Звънене Време на Звънене (max 60 секунди) Колко секунди да звъни основната вътрешна линия преди да продължи към следвай ме списъка. Вътрешната линия може също да се добави в следвай ме списъка. Установяването на 0 ще прескочи това. Времето в секунди за което телефона ще звъни. За всички типове преследване за стратегии на звънене, това е времето за всяко повторение на телефона(ите) които звънят Трябва да е между 1 и 60 секунди Предава Фиксиран CID определен по-долу само за входящи външни обаждания. Вътрешните обаждания ще продължат да се извършват в режима по-подразбиране. Предава набрания номер като CID за входящи външни обаждания. Вътрешните обаждания ще продължат да се извършват в режима по-подразбиране. Трябва да има DID на входящ маршрут за това.Ще се ПРЕДАДЕ за външни линии които блокират външен CallerID Предава набрания номер като CID за входящи външни обаждания. Вътрешните обаждания ще продължат да се извършват в режима по-подразбиране. Трябва да има DID на входящ маршрут за това.Ще бъде БЛОКИРАН за външни линии които блокират външен CallerID Предава CID на обаждащия се ако се поддържа от външната линия. Използвай Избрания Номер Потребител Внимание! Вътрешна Линия ALERT_INFO може да се използва за различно звънене при някои SIP устройства. Можете да добавите префикс на Caller ID името когато звъните на вътрешните линии в тази група. Например: Префикс "Продажби:", обаждането от Иван Иванов ще се показва "Продажби:Иван Иванов" на вътрешните линии които звънят. добавяне на annmsg_id поле.. добавяне на remotealert_id поле.. добавяне на toolate_id поле.. вече са преместени премахване на поле annmsg.. премахване на поле remotealert.. премахване на поле toolate.. фатална грешка първия свободен първия не на телефона преследване не е разрешена за вашия акаунт преследване с запомняне преместване към id на annmsg.. преместване към id на remotealert.. преместване към id на toolate.. преместени %s въвеждания преместване няма annmsg поле??? няма remotealert поле??? няма toolate поле??? ok Звъни на първата свободна вътрешна линия от списъка, след това на 1-та и 2-та, след това на 1-та, 2-та и 3-та вътрешна линия в списъка... и т.н. звъни само на първия свободен канал звъни само на първия канал който не е отворен - игнорира CW звъни на всички звъни на всички версия 2 Върти звъненето по всички достъпни вътрешни линии Този режим е като описания по-горе. Само че ако основната вътрешна линия (първата в списъка) е заета, другите вътрешни линии няма да звънят. Ако основната е FreePBX DND, няма да звъни. Ако основната е безусловен FreePBX CF, тогава всички ще звънят 