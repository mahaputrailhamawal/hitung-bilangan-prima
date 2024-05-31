#!/bin/bash

number=$1

if [ "$number" -lt 2 ]; then
  echo "bilangan ini bukan bilangan prima"
  exit 0
fi

for (( i=2; i*i<=$number; i++ ))
do
  if [ $(($number % $i)) -eq 0 ]; then
    echo "bilangan ini bukan bilangan prima"
    exit 0
  fi
done

echo "bilangan ini adalah bilangan prima"
