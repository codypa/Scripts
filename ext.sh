#!/bin/bash

for i in $(grep "bash$" /etc/passwd | awk -F ':' '{ print $1 }')
do
chage -d $(date +%Y-%m-%d) $i
done
