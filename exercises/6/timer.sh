#!/bin/bash

i=60;
while [ $i -gt 0 ];
  do 
    if [ $i -gt 9 ];
      then
        printf "\b\b$i";
    else
      printf "\b\b $i";
  fi;
  sleep 1;
  i=`expr $i - 1`;
done