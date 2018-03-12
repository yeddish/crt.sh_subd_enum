#!/bin/bash
curl https://crt.sh/?q=%25.$1 2>/dev/null| grep $1\< | grep \<TD\> | tr -d ' ' | sed -e 's/<[^>]*>//g' | sed 's/^\*\.//' | sort | uniq

