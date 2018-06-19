#!/bin/bash
#Filename
clear
read -p "用户前缀" QZ
read -p "用户个数" NUM
read -p "用户初始密码" PS
read -p "[可选设置]用户失效时间（YYYY-MM-DD)" EXT
I=1
while [ $I -ne $NUM ]
do
  if [ ! -z $EXT ]
  then
    useradd -e $EXT $QZ$I
  else
    useradd $QZ$I
  fi
 echo "123" | passwd --stdin $QZ$I &> /dev/null
 chage -d 0 $QZ$I
 let I++
done
