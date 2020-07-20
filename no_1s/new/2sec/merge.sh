#!/bin/bash
dir=$(pwd)
#testseq="normalize"
merge_file=silence.wav
echo $merge_file

for file in "$dir/"*
do
   str=${file%%.*}
if [[ $file =~ $testseq ]];
then    
    echo $file
else   
    sox -m $file $merge_file "${str}_merge.wav" 
fi
#   sox $file "${str}_pitched300.wav" pitch 300	
done
