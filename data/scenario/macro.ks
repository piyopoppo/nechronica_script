;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;マクロ定義

[macro name="init_message"]

;フォントファミリ
@font face="TA丸ゴGF05"

;主にシステムメッセージが表示される文字領域
[init_msg2]
@layopt layer="message2" visible=false

;キャラクターの名前が表示される文字領域
[init_msg1]
@ptext name="chara_name_area" layer="message1" color="white" size=20 x=30 y=456
@chara_config ptext="chara_name_area" pos_mode=false time="600" anim=true memory=true pos_change_time="600" talk_focus="brightness" brightness_value="50"
@layopt layer="message1" visible=false

;メッセージウィンドウの表示
[init_msg0]
@layopt layer="message0" visible=true

[endmacro]

[macro name="init_msg2"]
@position layer="message2" page=fore left=30 top=38 width=900 height=400 visible=true margint="20" marginl="20" marginr="50" marginb="20" opacity="200"
[endmacro]

[macro name="init_msg1"]
@position layer="message1" page=fore left=0 top=448 width=150 height=32 visible=true opacity="180"
[endmacro]

[macro name="init_msg0"]
@position layer="message0" page=fore left=0 top=480 width=960 height=160 visible=true margint="10" marginl="20" marginr="50" marginb="20" opacity="180"
[endmacro]

[macro name="init_chars"]

;キャラクター登録
[chara_new name="estel" storage="chara/estel/estte.png" jname="エステル"]
[chara_face name="estel" face="question" storage="chara/estel/estte2.png"]
[chara_face name="estel" face="laugh" storage="chara/estel/estte3.png"]
[chara_face name="estel" face="angry" storage="chara/estel/estte4.png"]
[chara_face name="estel" face="sorry" storage="chara/estel/estte5.png"]
[chara_face name="estel" face="impatience" storage="chara/estel/estte6.png"]
[chara_face name="estel" face="confusion" storage="chara/estel/estte7.png"]
[chara_face name="estel" face="panic" storage="chara/estel/estte8.png"]
[chara_face name="estel" face="triumphant1" storage="chara/estel/estte9.png"]
[chara_face name="estel" face="triumphant2" storage="chara/estel/estte10.png"]
[chara_new name="meirein" storage="chara/meirein/1.png" jname="メイレイン"]
[chara_face name="meirein" face="laugh" storage="chara/meirein/2.png"]
[chara_face name="meirein" face="dark" storage="chara/meirein/3.png"]
[chara_face name="meirein" face="anemia" storage="chara/meirein/4.png"]
[chara_face name="meirein" face="sorrow" storage="chara/meirein/5.png"]
[chara_face name="meirein" face="cry" storage="chara/meirein/6.png"]
[chara_face name="meirein" face="impatience" storage="chara/meirein/7.png"]
[chara_new name="nonenia" storage="chara/nonenia/doll.png" jname="ノネニア"]
[chara_face name="nonenia" face="laugh" storage="chara/nonenia/dollegao.png"]
[chara_face name="nonenia" face="angry" storage="chara/nonenia/dollikari.png"]
[chara_face name="nonenia" face="sadness" storage="chara/nonenia/dollkanasimi.png"]
[chara_face name="nonenia" face="madness1" storage="chara/nonenia/dollkyouki.png"]
[chara_face name="nonenia" face="madness2" storage="chara/nonenia/dollkyouki2.png"]
[chara_face name="nonenia" face="madness3" storage="chara/nonenia/dollkyouki3.png"]
[chara_face name="nonenia" face="surprise" storage="chara/nonenia/dollodoroki.png"]
[chara_new name="amelia" storage="chara/amelia/1.png" jname="アメリア"]
[chara_new name="amelia2" storage="chara/amelia/1.png" jname="？？？"]
[chara_new name="lapis" storage="chara/lapis/2.png" jname="ラピス"]
[chara_new name="lapis2" storage="chara/lapis/2.png" jname="？？？"]

[endmacro]

[macro name="show_msg"]
[init_msg0]
@layopt layer="message0" visible=true
[endmacro]
[macro name="hide_msg"]
@layopt layer="message0" visible=false
[endmacro]

[macro name="show_name"]
@layopt layer="message1" visible=true
[endmacro]
[macro name="hide_name"]
@layopt layer="message1" visible=false
[endmacro]

[macro name="show_system"]
[init_msg2]
@layopt layer="message2" visible=true
@current layer="message2"
[delay_too_fast]
[endmacro]
[macro name="hide_system"]
@layopt layer="message2" visible=false
@current layer="message0"
[init_msg0]
[delay_normal]
[endmacro]

[macro name="color_notice"]
@font color=0xffe400 bold=false
[font_frame_off]
[endmacro]
[macro name="color_book"]
@font color=0xffcb7a bold=false
[font_frame_off]
[endmacro]
[macro name="color_esp"]
@font color=0xff99ff bold=false
[font_frame_off]
[endmacro]
[macro name="color_lapis"]
@font color=0xce5700 bold=false
[font_frame_off]
[endmacro]
[macro name="color_madness"]
@font color=0x8d009e bold=true
[font_drop_shadow_on]
[endmacro]
[macro name="color_normal"]
@font color=0xffffff bold=false
[font_frame_off]
[endmacro]

[macro name="font_frame_on"]
[iscript]
$(".message_inner").css("text-shadow", "-1px -1px #000,1px -1px #000, -1px 1px #000,1px 1px #000");
[endscript]
[endmacro]
[macro name="font_drop_shadow_on"]
[iscript]
$(".message_inner").css("text-shadow", "1px 1px 2px #000");
[endscript]
[endmacro]
[macro name="font_frame_off"]
[iscript]
$(".message_inner").css("text-shadow", "none");
[endscript]
[endmacro]

[macro name="delay_too_slow"]
@delay speed=200
[endmacro]
[macro name="delay_slow"]
@delay speed=100
[endmacro]
[macro name="delay_normal"]
@delay speed=50
[endmacro]
[macro name="delay_fast"]
@delay speed=25
[endmacro]
[macro name="delay_too_fast"]
@delay speed=10
[endmacro]

[macro name="quake_char"]
@anim name="%name" top="+=30" time="%time|200" effect="easeOutQuad"
@wa
@anim name="%name" top="-=30" time="%time|200" effect="easeOutQuad"
@wa
@anim name="%name" top="+=30" time="%time|200" effect="easeOutQuad"
@wa
@anim name="%name" top="-=30" time="%time|200" effect="easeOutQuad"
@wa
[endmacro]

[macro name="quake_h_char"]
@anim name="%name" left="+=15" time="%time|200" effect="easeOutQuad"
@wa
@anim name="%name" left="-=30" time="%time|200" effect="easeOutQuad"
@wa
@anim name="%name" left="+=30" time="%time|200" effect="easeOutQuad"
@wa
@anim name="%name" left="-=15" time="%time|200" effect="easeOutQuad"
@wa
[endmacro]

[macro name="damage_effect"]
@quake count="%count|1" time="%time|500" vmax="30" wait="%wait|false"
[endmacro]

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;キャラ画像の高さ定義
[iscript]
f.char_image_top = {"estel": 580, "nonenia": 620, "meirein": 600, "amelia": 500, "lapis": 620};
[endscript]

[macro name="hide_chars"]

[hide_name]
[if exp="f.char_image_left != null || f.char_image_right != null"]
@chara_hide_all time="500"
[endif]
[eval exp="f.char_image_left = null"]
[eval exp="f.char_image_right = null"]

[endmacro]

[macro name="show_left"]

;バグ対策
[eval exp="f.tmp_name = mp.name"]

;既に他のキャラが表示されていたらそれを非表示にする
[if exp="f.char_image_left != null && f.char_image_left != mp.name"]
[hide_name]
@chara_hide name=&f.char_image_left time="250" pos_mode="false"
[endif]
[if exp="f.char_image_left != mp.name"]
[show_char name="%name" left="50" face="%face|default" zindex="%zindex|2"]
[endif]
[eval exp="f.char_image_left = f.tmp_name"]

[endmacro]

[macro name="show_right"]

;バグ対策
[eval exp="f.tmp_name = mp.name"]

;既に他のキャラが表示されていたらそれを非表示にする
[if exp="f.char_image_right != null && f.char_image_right != mp.name"]
[hide_name]
@chara_hide name=&f.char_image_right time="250" pos_mode="false"
[endif]
[if exp="f.char_image_right != mp.name"]
[show_char name="%name" left="500" face="%face|default" zindex="%zindex|2"]
[endif]
[eval exp="f.char_image_right = f.tmp_name"]

[endmacro]

[macro name="show_char"]

[iscript]
f.tmp_top = 640 - f.char_image_top[mp.name];
[endscript]

@chara_show name="%name" face="%face" zindex="%zindex|2" time="250" left="%left" top=&f.tmp_top
[show_name]

[endmacro]

[macro name="notice_flash"]

@mask color="%color|0xffffff" effect="fadeIn" time="%itime|1000"
@wait time="%wtime|1000"
@mask_off time="%otime|1000"

[endmacro]

[macro name="madness_flash"]

[notice_flash color="0x8d009e" itime="200" wtime="0" otime="200"]

[endmacro]

[macro name="change_zindex"]

[iscript]
$("." + mp.back).css("z-index", 5);
$("." + mp.front).css("z-index", 10);
[endscript]

[endmacro]

[macro name="change_zindex_manually"]

[iscript]
$("." + mp.name).css("z-index", mp.zindex);
[endscript]

[endmacro]

[macro name="bgmplay"]
@fadeinbgm storage="%name" loop="true" volume="50" time="%fadetime|3000"
[endmacro]
[macro name="bgmstop"]
@fadeoutbgm time="%time|2000"
[endmacro]
[macro name="se"]
@playse storage="%name" volume="50" buf="%buf|0"
[endmacro]

@return

/*
[quake_char name="estel"]
[quake_h_char name="estel" time="400"]
[damage_effect]
[madness_flash]
[bgmplay name=".ogg"]
[bgmstop]
[se name=".ogg"]
は【】を損傷します。[l][r]
アメリアは待機します。[l][r]
アメリア: Count n → m[l][r]
へダメージは発生しません。[p]
火炎ビン失敗（発動時）: [se name="FIRE2.ogg"]
火炎ビン成功（発動時）: [se name="FIRE3.ogg"]
鉄球鎖: [se name="CRUSH06.ogg"]
くされじる・どろどろ: [se name="MUD2.ogg"]
アサブレ・包丁: [se name="BLADE.ogg"]
こぶし・敵の攻撃全般: [se name="IMPACT11.ogg"]
結晶針: [se name="STAB3.ogg"]
一斉射撃（発動時）: [se name="GUNAUTO2.ogg"]
エンバーミング・あるびの（発動時）: [se name="MAGIC.ogg"]
キャタピラ: [se name="MACHINE3.ogg"]
ワイヤーリール（発動時）: [se name="TWANG5.ogg"]
きもちいいくすり: [se name="SMASH2.ogg"]
自傷: [se name="CRUSH07.ogg"]
*/
/*
《 Turn n ◆ Count n ◆ Necromancer's Phase 》[l][r]
動けるレギオン・ホラー・サヴァントがいません。[l][r]
《 Necromancer's Phase End 》[p]

《 Turn n ◆ Count n ◆ Player's Phase 》[l][r]
動けるドールがいません。[l][r]
《 Player's Phase End 》[p]
*/