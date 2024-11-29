# robosys2024
ロボットシステム学授業用       [![test](https://github.com/IkkiChikaraishi/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/IkkiChikaraishi/robosys2024/actions/workflows/test.yml)

# 導入方法
適当な場所で下記のコマンドを打って、リポジトリのクローンを行ってください。
```
$ git clone https://github.com/IkkiChikaraishi/robosys2024.git
$ cd robosys2024
```
もしgitがインストールされていないのなら以下のコマンドを打ってインストールを行ってください。
```
$ sudo apt update
$ sudo apt install git
```

# plusコマンド
標準入力を用いて入力された数字までを１から加算していき、合計を出すコマンドです。

## 使用方法
実行するために以下のコマンドを入力してください。
```
$ seq 10 | ./plus
```
この場合、10と入力したので1から10までの数が加算されていき、以下のような出力結果が出ます。
```
55
```

# 九九の表を並べて表示するコマンド
## 概略
標準入力を用いて九九の段（１～９）を入力し、その数値までの九九の表を並べて表示するプログラムです。打ち込めるのは数字（１～９）だけで、アルファベットや日本語、負の数、１～９以外の数を入力するとエラーが出ます。

## 使用方法
実行するために以下のコマンドを入力してください。今回は５の段まで表示してみます。


# 必要なソフトウェア
* python テスト済みバージョン3.7 ~ 3.10
* Ubuntu (20.04 LTS)

# テスト環境
* Ubuntu (20.04 LTS)

# 著作権・ライセンス
* このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布および使用が許可されます。
- このパッケージのコードは、下記のスライド（CC-BY-SA 4.0 by Ryuuichi Ueda）のものを、本人の許可を得て自身の著作としたものです。
  -  https://ryuichiueda.github.io/slides_marp/robosys2024/lesson5.html#23
* ⓒ 2024 Ikki Chikaraishi  
