#!/bin/bash
#Filename
PRICE=$(($RANDOM % 1000))
TIMES=0
echo "商品价格为0-999元，请猜具体是多少钱？"
while [ $? -eq 0 ]
do
  read -p "输入价格:" INT
  let TIMES++
  if [ $INT -eq $PRICE ]
	then
	echo "猜对了，实际价格是 $PRICE"
	echo "总共猜了 $TIMES 次"
	exit 0
    elif [ $INT -gt $PRICE ]
	then
	echo "猜高了"
	else 
	echo "猜低了"
  fi
done
