#!/bin/bash
I=1
while [ $I -ne 10 ]
do
  userdel -r qq$I
  let I++
done
