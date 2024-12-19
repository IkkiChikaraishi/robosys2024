<!---
#SPDX-FileCopyrightText:2024 Ikki Chikaraishi
#SPDX-Licence-Identifier:BSD-3-Clause
--->
# robosys2024
ロボットシステム学授業用    [![test](https://github.com/IkkiChikaraishi/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/IkkiChikaraishi/robosys2024/actions/workflows/test.yml)

# 導入方法
適当な場所で下記のコマンドを打って、リポジトリのクローンを行ってください。
```
$ git clone https://github.com/IkkiChikaraishi/robosys2024.git
```
次に、下記のコマンドを打ってディレクトリを移動してください。
```
$ cd robosys2024
```
もしgitがインストールされていないのなら以下のコマンドを打ってインストールを行ってください。
```
$ sudo apt update
$ sudo apt install git
```

# plusコマンド
標準入力を用いて入力された数字までを1から加算していき、合計を出すコマンドです。

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
標準入力を用いて九九の段（1~9）を入力し、その数値までの九九の表を並べて表示するプログラムです。

## 使用方法
実行するために以下のコマンドを入力してください。今回は5の段まで表示してみます。
```
$ echo "5" | ./kukunohyou
```
実行結果は以下のようになり、5の段までの九九の表が並んで表示されます。
```
1×1=1   1×2=2   1×3=3   1×4=4   1×5=5   1×6=6   1×7=7   1×8=8   1×9=9
2×1=2   2×2=4   2×3=6   2×4=8   2×5=10  2×6=12  2×7=14  2×8=16  2×9=18
3×1=3   3×2=6   3×3=9   3×4=12  3×5=15  3×6=18  3×7=21  3×8=24  3×9=27
4×1=4   4×2=8   4×3=12  4×4=16  4×5=20  4×6=24  4×7=28  4×8=32  4×9=36
5×1=5   5×2=10  5×3=15  5×4=20  5×5=25  5×6=30  5×7=35  5×8=40  5×9=45
```

## 注意
* 1~9以外の数字を入れた場合、実行するとエラーがでます。
* また、アルファベットや日本語などの数字以外の文字を入れた場合でも、実行するとエラーが出ます。

# 必要なソフトウェア
* python テスト済みバージョン3.7 ~ 3.10

# テスト環境
* Ubuntu (20.04 LTS)

# 参考資料
* https://www.curict.com/item/ef/ef6d203.html
* https://www.sejuku.net/blog/72383#index_id3
* https://machine-learning-skill-up.com/knowledge/pythonsys-exit%E3%82%92%E4%BD%BF%E3%81%84%E3%81%93%E3%81%AA%E3%81%99-%E5%BC%95%E6%95%B0%E3%81%A8%E6%88%BB%E3%82%8A%E5%80%A4%E3%82%92%E7%90%86%E8%A7%A3%E3%81%97%E6%AD%A3%E5%B8%B8%E7%B5%82%E4%BA%86
* https://qiita.com/naoya_ok/items/cb0b2368f83aa0eaec4d

# 著作権・ライセンス
* このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
* このパッケージのコードは、下記のスライド（CC-BY-SA 4.0 by Ryuuichi Ueda）のものを、本人の許可を得て自身の著作としたものです。
  *  [該当のスライド](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson5.html#23)
* ⓒ 2024 Ikki Chikaraishi 
