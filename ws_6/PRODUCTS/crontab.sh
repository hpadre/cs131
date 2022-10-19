#!/bin/bash

#mkdir ./PRODUCTS
#fgrep "0525947647" ~/amazon_reviews_us_Books_v1_02.tsv >./0525947647.txt
DATETIME=$(date +$Y%m%d_%H%M%S )
cp /home/hannele/cs131/ws_6/PRODUCTS/0525947647.txt /home/hannele/cs131/ws_6/PRODUCTS/0525947647.$DATETIME.txt
rm -f /home/hannele/cs131/ws_6/PRODUCTS/0525947647.LATEST.txt
ln -s /home/hannele/cs131/ws_6/PRODUCTS/0525947647.$DATETIME.txt /home/hannele/cs131/ws_6/PRODUCTS/0525947647.LATEST.txt
#cat ./0525947647.LATEST.txt
awk -F '\t' '{total += $8; count++} END {print total/count}' /home/hannele/cs131/ws_6/PRODUCTS/0525947647.LATEST.txt > /home/hannele/cs131/ws_6/PRODUCTS/0525947647.AVGRATING.txt
echo "$DATETIME"
