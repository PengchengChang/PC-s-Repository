#!/bin/bash
replace(){
	sed -i "s/$1/$2/" $(grep -r -l "$1") 
}
replace $1 $2

