# ジャンケン

![test](https://github.com/Itotako/homework1_robosys2024/actions/workflows/test.yml/badge.svg)

## コマンドの説明
このコマンドはあなた(user)と相手(cpu)でじゃんけんをするものです.

## 利用方法

```bash
$ git clone https://github.com/Itotako/homework1_robosys2024.git   # リポジトリをクローン
$ cd homework1_robosys2024                 # homework_robosys2024に移動
$ echo グー | ./janken                     # 実行例1(グー)
最初はグー！！じゃんけんぽん！！
相手: チョキ
あなた: グー
あなたの勝ちです！やるね！                    # 結果1
$ echo チョキ | ./janken                    # 実行例2(チョキ)
最初はグー！！じゃんけんぽん！！
相手: グー
あなた: チョキ
あなたの負けです…今回は負けちゃったけど、次はきっと勝てるよ👍   #結果2
```
## 利用する際の注意
- 実行する際," $ echo (あなたの手: グー, チョキ, パー) | ./janken "のあなたの手は選択肢の中の一つを選び, 必ずカタカナで入力してください. 他の言葉(1, ぐー, gu- ピース, etc.)で入力した場合エラーになり, 負け判定になります.
```bash
$ echo ピース | ./janken
最初はグー！！じゃんけんぽん！！
無効な入力です。正しい手（グー、チョキ、パー）でないため反則負けです。次こそは正々堂々と勝負しようじゃないか！
```
- あいこになった場合もコマンドが終了します.

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7 ~ 3.12

## テスト環境
- Ubuntu 22.04.5 LTS on Windows

## 参考文献
* [ロボットシステム学 第3回: Linux環境でのPythonプログラミングⅡ](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson3.html)
* [ロボットシステム学 第4回: GitとGitHub](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson4.html)
* [ロボットシステム学 第5回: 著作権とライセンス](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson5.html)
* [ロボットシステム学 第6回: ソフトウェアのテスト](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson6.html)
* [ロボットシステム学 第7回: GitHubでのテスト](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson7.html)
* [Pythonの基礎文法だけでじゃんけんプログラムを開発する5つの方法](https://jp-seemore.com/iot/python/29219/)
* [unittest --- ユニットテストフレームワーク](https://docs.python.org/ja/3/library/unittest.html)

## ライセンスと著作権
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードの一部は, 下記のスライド(CC-BY-SA 4.0 by ryuichi ueda)のものを本人の許可を得て自身の著作としたものです. 
  - [ryuichiueda/my_slides robosys_2024](http://github.com/ryuichiueda/slides_marp/tree/master/robosys2024) 
- © 2024 Kaito Ito
