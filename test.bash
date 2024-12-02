#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Kaito Ito
# SPDX-License-Identifier: BSD-3-Clause

python3 <<EOF
import unittest
from unittest.mock import patch
import sys
import random
import io

from janken_test import main

class TestJanken(unittest.TestCase):

    @patch('sys.stdin.readline', return_value="グー\n")  # ユーザー入力を「グー」に固定
    @patch('random.randint', return_value=1)  # CPUの選択を「チョキ」に固定
    @patch('sys.stdout', new_callable=io.StringIO)  # 標準出力をキャプチャ
    def test_user_win(self, mock_stdout, mock_randint, mock_stdin):
        # ユーザーが「グー」、CPUが「チョキ」の場合
        main()
        output = mock_stdout.getvalue()
        self.assertIn("あなたの勝ちです！やるね！", output)  # 勝ちメッセージが出ることを確認

    @patch('sys.stdin.readline', return_value="チョキ\n")  # ユーザー入力を「チョキ」に固定
    @patch('random.randint', return_value=0)  # CPUの選択を「グー」に固定
    @patch('sys.stdout', new_callable=io.StringIO)  # 標準出力をキャプチャ
    def test_user_lose(self, mock_stdout, mock_randint, mock_stdin):
        # ユーザーが「チョキ」、CPUが「グー」の場合
        main()
        output = mock_stdout.getvalue()
        self.assertIn("あなたの負けです…今回は負けちゃったけど、次はきっと勝てるよ👍", output)  # 負けメッセージが出ることを確認

    @patch('sys.stdin.readline', return_value="パー\n")  # ユーザー入力を「グー」に固定
    @patch('random.randint', return_value=2)  # CPUの選択を「パー」に固定
    @patch('sys.stdout', new_callable=io.StringIO)  # 標準出力をキャプチャ
    def test_draw(self, mock_stdout, mock_randint, mock_stdin):
        # ユーザーが「パー」、CPUが「パー」の場合（あいこ）
        main()
        output = mock_stdout.getvalue()
        self.assertIn("あいこです。また挑戦してね！", output)  # あいこメッセージが出ることを確認

    @patch('sys.stdin.readline', return_value="ピース\n")  # 無効な入力（「ピース」）をシミュレート
    @patch('sys.stderr', new_callable=io.StringIO)  # 標準エラー出力をキャプチャ
    def test_invalid_input(self, mock_stderr, mock_stdin):
        # 無効な入力がされるとエラーメッセージが出力されることを確認
        main()
        error_output = mock_stderr.getvalue()
        self.assertIn("無効な入力です。正しい手（グー、チョキ、パー）でないため反則負けです。次こそは正々堂々と勝負しようじゃないか！", error_output)

if __name__ == '__main__':
    unittest.main()
EOF

