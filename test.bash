#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Kaito Ito
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0


### NORMAL INPUT ###
# グーで勝つ場合、CPUがチョキと仮定
out=$(echo "グー" | ./janken)
[[ "${out}" =~ "相手: チョキ" && "${out}" =~ "あなたの勝ちです" ]] || ng "$LINENO"

# グーで負ける場合、CPUがパーと仮定
out=$(echo "グー" | ./janken)
[[ "${out}" =~ "相手: パー" && "${out}" =~ "あなたの負けです" ]] || ng "$LINENO"

# グーであいこになる場合、CPUもグーと仮定
out=$(echo "グー" | ./janken)
[[ "${out}" =~ "相手: グー" && "${out}" =~ "あいこです" ]] || ng "$LINENO"

# チョキで勝つ場合、CPUがパーと仮定
out=$(echo "チョキ" | ./janken)
[[ "${out}" =~ "相手: パー" && "${out}" =~ "あなたの勝ちです" ]] || ng "$LINENO"

# チョキで負ける場合、CPUがグーと仮定
out=$(echo "チョキ" | ./janken)
[[ "${out}" =~ "相手: グー" && "${out}" =~ "あなたの負けです" ]] || ng "$LINENO"

# チョキであいこになる場合、CPUもチョキと仮定
out=$(echo "チョキ" | ./janken)
[[ "${out}" =~ "相手: チョキ" && "${out}" =~ "あいこです" ]] || ng "$LINENO"

# パーで勝つ場合、CPUがグーと仮定
out=$(echo "パー" | ./janken)
[[ "${out}" =~ "相手: グー" && "${out}" =~ "あなたの勝ちです" ]] || ng "$LINENO"

# パーで負ける場合、CPUがチョキと仮定
out=$(echo "パー" | ./janken)
[[ "${out}" =~ "相手: チョキ" && "${out}" =~ "あなたの負けです" ]] || ng "$LINENO"

# パーであいこになる場合、CPUもパーと仮定
out=$(echo "パー" | ./janken)
[[ "${out}" =~ "相手: パー" && "${out}" =~ "あいこです" ]] || ng "$LINENO"


### STRANGE INPUT ###
# 無効な入力をテスト
out=$(echo "ピース" | ./janken 2>&1) # 2>&1:標準エラー出力を標準出力へ流し込む構文
[[ "${out}" =~ "無効な入力です" ]] || ng "$LINENO"

# 空入力をテスト
out=$(echo "" | ./janken 2>&1)
[[ "${out}" =~ "無効な入力です" ]] || ng "$LINENO"

# 全てが成功した場合OKを表示
[ "${res}" = 0 ] && echo OK
exit $res
