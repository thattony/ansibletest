#!/bin/bash

while read f; 
do
  ip=$(echo $f | cut -d" " -f1)
  #cat ~/Desktop/probe.sh | ssh $ip
  ssh user@$ip 'bash -s' < ~/Desktop/probe.sh
  echo -e "\n"
  printf "%0.s=" {1..60}
  echo -e "\n"
done < ~/Desktop/hosts
