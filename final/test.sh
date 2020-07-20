#!/bin/bash

time=16500
for((i=1;i<80;i++))
do
  time=$((time-5))
  echo $time
done
