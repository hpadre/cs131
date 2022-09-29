#!/bin/bash

dir=$1

echo "Accessing directory:" $dir

for f in ./$dir/*
do
	echo "Mean helpfulness score of" $dir "ID" $f
	sum=$(awk '{print $1}' $f | paste -sd+ | bc)
	echo "$sum/$(cat $f | wc -l)" | bc -l
done

