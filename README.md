# 俳句メーカー

[![test](https://github.com/Itotako/homework1_robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/Itotako/homework1_robosys2024/actions/workflows/test.yml)

## コマンドの説明
このコマンドは四季(春, 夏, 秋, 冬)を入力することで, その季節に関連した俳句をランダムに生成します.

## 利用方法

```bash
$ git clone https://github.com/Itotako/homework1_robosys2024.git  # リポジトリをクローン
$ cd homework1_robosys2024           # homework_robosys2024に移動
$ echo 春 | ./haiku_generator        # 実行例1
雪解けて
山路の道
芽吹きの日                          # 結果1
$ echo 夏 | ./haiku_generator      # 実行例2
暑さまし
木陰に集う
波の音                             # 結果2
```
## 利用する際の注意
- **入力形式**: 
  - 四季は漢字(春, 夏, 秋, 冬)で入力してください.
- **ランダム生成**: 
  - 出力される俳句はランダムです. お好みの俳句が出るまで繰り返し実行してください.

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
* [Pythonでリストからランダムに要素を選択するchoice, sample, choices](https://note.nkmk.me/python-random-choice-sample-choices/)

## ライセンスと著作権
- このソフトウェアパッケージは，**3条項BSDライセンス**の下，再頒布および使用が許可されます．
- このパッケージのコードの一部は, 下記のスライド(CC-BY-SA 4.0 by ryuichi ueda)のものを本人の許可を得て自身の著作としたものです. 
  - [ryuichiueda/slides_marp robosys2024](http://github.com/ryuichiueda/slides_marp/tree/master/robosys2024) 
- © 2024 Kaito Ito
