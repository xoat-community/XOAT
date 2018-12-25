#!/bin/bash
PID=`ps -eaf | grep Xoat-Qt | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID
else
  echo "No Xoat-Qt process running. QT will not kill any process" false
fi
#open /Users/cbqa/xoat/BlackCoin-Qt.app/

#PID=$(ps -A | grep -m1 BlackCoin-Qt | awk '{print $1}')
#echo "killed Xoat process with code: "
#echo $PID
#kill -9 $PID