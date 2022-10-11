#!bin/bash
  
alist=$1
category=$2
 
for i in $( awk '{print $2; }' $alist)
do
	grep $i amazon_reviews.tsv > ./$category/$i.txt
done

