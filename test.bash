#!/bin/bash

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 5 | ./plus)
[ "$a" = phoenix ] || ng "$LINENO"
[ "$a" = chikaraishi ] || ng "$LINENO"

exit $res
