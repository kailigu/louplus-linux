#!/bin/sed -f

/^\s*$/d
/^[0-9]+\..+$/!G
s/http:\/\//https:\/\//g
s/^\[(.*)\]\((.+\.(png|jpg))\)/\!\[\1\]\(\2\)/g
s/\!\[(.*)\]\((.+\.tar\.gz)\)/\[\1\]\(\2\)/g
s/^([0-9]+\.)(\S.+)$/\1 \2/