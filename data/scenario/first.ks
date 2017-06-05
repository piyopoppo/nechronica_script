;一番最初に呼び出されるファイル
[title name="麗しの君"]

;@call storage="tyrano.ks"

;マクロ定義の読み込み
@call storage="macro.ks"

;キャラクターの読み込み
[init_chars]
[hide_chars]

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="title.ks"
