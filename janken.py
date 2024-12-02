#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Kaito Ito
# SPDX-License-Identifier: BSD-3-Clause

import random
import sys

def main():
    random.seed()  # シードなしで呼び出す乱数
    choices = ["グー", "チョキ", "パー"]

    print("最初はグー！！じゃんけんぽん！！")

    # 変数定義
    user = sys.stdin.readline().strip()  # 入力から余分な空白を除去
    cpu = random.randint(0, 2)  # 相手の手

    # 入力チェック
    if user not in choices:
        sys.stderr.write("無効な入力です。正しい手（グー、チョキ、パー）でないため反則負けです。次こそは正々堂々と勝負しようじゃないか！\n")
        return  # 関数を終了してプログラムを終える

    print(f"相手: {choices[cpu]}")
    print(f"あなた: {user}")

    # 勝敗判定
    if user == choices[cpu]:
        print("あいこです。また挑戦してね！")
    elif (user == "グー" and choices[cpu] == "チョキ") or \
         (user == "チョキ" and choices[cpu] == "パー") or \
         (user == "パー" and choices[cpu] == "グー"):
        print("あなたの勝ちです！やるね！")
    else:
        print("あなたの負けです…今回は負けちゃったけど、次はきっと勝てるよ👍")

if __name__ == "__main__":
    main()