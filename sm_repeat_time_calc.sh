#!/usr/local/bin/bash
# calculate total time from back-off rate

if [ -z $1 ]; then
    echo "This will output the total time from the first execution to the last retry, not including execution time"
    echo "Argument order is IntervalSeconds MaxAttempts BackoffRate"
    echo "Only works with whole numbers"
    exit 0
fi
declare -i interval=$1
declare -i MaxAttempts=$2
declare -i rate=$3
declare -i total=$interval
declare -i addtime=$interval
echo "First repeat $total seconds"
declare -i repeat=1
while [[ $repeat -lt $MaxAttempts ]]; do
    total=$(( $total+$addtime ))
    repeat=$(( $repeat+1 ))
    addtime=$(( $addtime*$rate ))
    echo repeat $repeat at $total seconds next add: $addtime seconds
done
echo Last repeat "$total seconds or $(( $total/60 )) minutes $(( $total%60 )) seconds"
