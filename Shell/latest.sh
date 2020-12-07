#!/bin/sh

IFS=''
for f in dataset.txt; do
     while read UserAgent; do
       read Pragma
       read Cachecontrol
       read Accept
       read AcceptEncoding
       read AcceptCharset
       read AcceptLanguage
       read Host
       read Cookie
       read Connection
       echo "$UserAgent,$Pragma,$Cachecontrol,$Accept,$AcceptEncoding,-$AcceptCharset,$AcceptLanguage,$Host,$Cookie,$Connection">>outputfile1.csv
     done < "$f"
done
