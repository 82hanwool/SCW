#!/bin/bash #path to bash shell that will execute this file
#notice the path 

#this script outputs the highest life expectancy
#usage statment:
#usage: ./MyScript3.sh input > output
#change hard-wired file name
#change Mexico.txt to input and assign the value Mexico.txt to it

#define an input variable


#$1 is a special variable accepts value from the command line
#output will also be indicated on the command line
input=$1
colnum=$2
cut -f1,3,$colnum $input|sort -nk3|tail -n1 
