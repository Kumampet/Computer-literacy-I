#!/usr/local/gnu/bin/bash
#入力された数値までずらっと表示
echo "Please tiping numbr:"
read N

for((i=0;i<=N;i++)); do
    echo $i
done

