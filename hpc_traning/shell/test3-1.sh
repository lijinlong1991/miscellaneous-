#!/bin/bash

if [ $# -gt 0 ]
then
    var="Hello"

 for name in $*
 do 
     echo $var $name;  
 done;
 
else
    echo "problem reading input files"
fi
    
