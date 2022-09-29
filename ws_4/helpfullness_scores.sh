#!/bin/bash

# Assign variables
id_file=$1
category=$2

for i in $( awk '{ print $2; }' $id_file)
do
	egrep $i amazon_reviews.tsv | awk -F '	' '{print $9}' > ./$category/$i.txt
done

