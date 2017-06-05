# Nechronica Script

----
## これはなに
ネクロニカシナリオ「麗しの君」動画で使用した、TyranoScript用のデータです。

----
## 動作環境
* [ティラノスクリプト](http://tyrano.jp) ver4.50

----
## 使用方法
ティラノスクリプトをダウンロードし、tyranoscript.exeが置いてあるディレクトリと同じ場所に全ファイルをコピーしてください。

----
## 注意点
* BGM・効果音・フォントデータを取り除いてあります
* 動作させるには以下の行をコメントアウトする必要があります

### title.ks
> 5行目

    @font face="TA丸ゴGF05"

### macro.ks

> 7行目

    @font face="TA丸ゴGF05"
> 278行目

    @fadeinbgm storage="%name" loop="true" volume="50" time="%fadetime|3000"
> 281行目

    @fadeoutbgm time="%time|2000"
> 284行目

    @playse storage="%name" volume="50" buf="%buf|0"
