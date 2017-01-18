#!/bin/sh
_id=$1

for die1 in `ps -ef | grep ^${_id} | grep -v grep | awk '{print $2}'`
do 
kill -1 ${die1} >>/dev/null 2>&1
done
sleep 1
for die2 in `ps -ef | grep ^${_id} | grep -v grep | awk '{print $2}'`
do
kill -15 ${die2} >>/dev/null 2>&1
done
sleep 1
for dienow in `ps -ef | grep ^${_id} | grep -v grep | awk '{print $2}'`
do
kill -9 ${dienow} >>/dev/null 2>&1
done

echo "All processes owned by $_id should be dead now"
exit 0
