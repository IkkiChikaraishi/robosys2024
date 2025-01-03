#!/bin/bash 
#SPDX-FileCopyrightText:2024 Ikki Chikaraishi
#SPDX-Licence-Identifier:BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 10 | ./plus)
[ "${out}" = 55 ] || ng "$LINENO"

### hennanov###
out=$(echo 1 | ./kukunohyou)
[[ "$out" = *"1×1=1"* ]] || ng "$LINENO"

out=$(echo 2 | ./kukunohyou)
[[ "$out" = *"2×1=2"* ]] || ng "$LINENO"

out=$(echo 3 | ./kukunohyou)
[[ "$out" = *"3×1=3"* ]] || ng "$LINENO"

out=$(echo 4 | ./kukunohyou)
[[ "$out" = *"4×1=4"* ]] || ng "$LINENO"

out=$(echo 5 | ./kukunohyou)
[[ "$out" = *"5×1=5"* ]] || ng "$LINENO"

out=$(echo 6 | ./kukunohyou)
[[ "$out" = *"6×1=6"* ]] || ng "$LINENO"

out=$(echo 7 | ./kukunohyou)
[[ "$out" = *"7×1=7"* ]] || ng "$LINENO"

out=$(echo 8 | ./kukunohyou)
[[ "$out" = *"8×1=8"* ]] || ng "$LINENO"

out=$(echo 9 | ./kukunohyou)
[[ "$out" = *"9×1=9"* ]] || ng "$LINENO"

echo a | ./kukunohyou 2> /tmp/error_file
[ "$?" = 1 ] || ng "$LINENO"
grep エラーです。数字を入力してください。 /tmp/error_file
[ "$?" = 0 ] || ng "$LINENO"

echo ab | ./kukunohyou 2> /tmp/error_file
[ "$?" = 1 ] || ng "$LINENO"
grep エラーです。数字を入力してください。 /tmp/error_file
[ "$?" = 0 ] || ng "$LINENO"

echo 0 | ./kukunohyou 2> /tmp/error_file
[ "$?" = 1 ] || ng "$LINENO"
grep エラーです。段の数は1から9の範囲で指定してください。 /tmp/error_file
[ "$?" = 0 ] || ng "$LINENO"

echo 10 | ./kukunohyou 2> /tmp/error_file
[ "$?" = 1 ] || ng "$LINENO"
grep エラーです。段の数は1から9の範囲で指定してください。 /tmp/error_file
[ "$?" = 0 ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
