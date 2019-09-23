# I2Cの解説

## 概略

I2C(アイ・スクエアド・シー、アイ・アイ・シー）がどのようなものかは、Wikipediaの[I2C](https://ja.wikipedia.org/wiki/I2C)を参照してください。正確な仕様を知りたい場合は、NXPセミコンダクターズ社が配布している[I2C バス仕様およびユーザーマニュアル](http://www.nxp.com/docs/ja/user-guide/UM10204.pdf)を参照してください。

ここでは、I2Cの基本的な部分のみを解説します。

## 主な特徴

* 信号線は2本存在する。シリアル・データライン(SDA)とシリアル・クロックライン(SCL)
* 接続されている機器は、マスタ、スレーブのどちらかになる。(マスタは複数存在しうる)
* 基本的に8ビット単位のシリアル双方向のデータ転送が可能。(ウルトラファーストモードは片方向)

転送モードは以下の5つが存在する。

| モード | 最大転送速度 |
| ----- | ---- |
| スタンダードモード:Sm | 100kbit/s    |
| ファーストモード :Fm | 400 kbit/s |
| フ ァースト モード プラス:Fm+ | 1Mbit/s |
| ハイ スピー ド モー ド :Hs-mode | 3.4Mbit/s |
| ウルトラファーストモード : Ufm | 5Mbit/s |

## 構成図

I2Cバスで接続される機器は以下の例のような構成になります。

未稿
