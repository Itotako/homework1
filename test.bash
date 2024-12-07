#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Kaito Ito
# SPDX-License-Identifier: BSD-3-Clause


ng () {
    echo ${1}行目が違うよ
    res=1
}

res=0

# それぞれの季節入力で３行の俳句を生成しているかのテスト
# 春のテスト
out=$(echo 春 | ./haiku_generator)
line_count=$(echo "$out" | wc -l)
[ "$line_count" -eq 3 ] || ng "$LINENO"

# 夏のテスト
out=$(echo 夏 | ./haiku_generator)
line_count=$(echo "$out" | wc -l)
[ "$line_count" -eq 3 ] || ng "$LINENO"

# 秋のテスト
out=$(echo 秋 | ./haiku_generator)
line_count=$(echo "$out" | wc -l)
[ "$line_count" -eq 3 ] || ng "$LINENO"

# 冬のテスト
out=$(echo 冬 | ./haiku_generator)
line_count=$(echo "$out" | wc -l)
[ "$line_count" -eq 3 ] || ng "$LINENO"

# grep -q でエラー出力がマッチしているかのテスト
# 無効な入力のテスト
out=$(echo 夏休み | ./haiku_generator 2>&1)
[ "$?" = 1 ] || ng "$LINENO"
echo "$out" | grep -q "無効な入力です" || ng "$LINENO"

# 空の入力のテスト
out=$(echo | ./haiku_generator 2>&1)
[ "$?" = 1 ] || ng "$LINENO"
echo "$out" | grep -q "無効な入力です" || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

