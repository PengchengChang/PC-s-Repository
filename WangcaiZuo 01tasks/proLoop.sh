#!/bin/bash

sed -n "s/Have/You/gp;s/\ba\b/have/p;s/very/just/gp;s/nice/lerned/gp;\
s/Christmas/how/gp;s/and/to/gp;s/happy/script/gp;s/new/like/gp;\
s/year!/a\npro/gp" output.txt
