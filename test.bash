#!/bin/bash 

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 10 | ./plus)
[ "${out}" = 55 ] || ng "$LINENO"

### hennanov###
out=$(echo 1 | ./kadai1)
[[ "$out" = *"1×1=1"* ]] || ng "$LINENO"

out=$(echo 2 | ./kadai1)
[[ "$out" = *"2×1=2"* ]] || ng "$LINENO"

out=$(echo 3 | ./kadai1)
[[ "$out" = *"3×1=3"* ]] || ng "$LINENO"

out=$(echo 4 | ./kadai1)
[[ "$out" = *"4×1=4"* ]] || ng "$LINENO"

out=$(echo 5 | ./kadai1)
[[ "$out" = *"5×1=5"* ]] || ng "$LINENO"

out=$(echo 6 | ./kadai1)
[[ "$out" = *"6×1=6"* ]] || ng "$LINENO"

out=$(echo 7 | ./kadai1)
[[ "$out" = *"7×1=7"* ]] || ng "$LINENO"

out=$(echo 8 | ./kadai1)
[[ "$out" = *"8×1=8"* ]] || ng "$LINENO"

out=$(echo 9 | ./kadai1)
[[ "$out" = *"9×1=9"* ]] || ng "$LINENO"

out=$(echo a | ./kadai1)
[[ "$out" = *"エラー: 数字を入力してください。"* ]] || ng "$LINENO"

out=$(echo ab | ./kadai1)
[[ "$out" = *"エラー: 数字を入力してください。"* ]] || ng "$LINENO"

out=$(echo 0 | ./kadai1)
[[ "$out" = *"エラー: 段の数は1から9の範囲で指定してください。"* ]] || ng "$LINENO"

out=$(echo 10 | ./kadai1)
[[ "$out" = *"エラー: 段の数は1から9の範囲で指定してください。"* ]] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
