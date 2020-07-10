!/bin/bash
dir=$(pwd)
testseq="pitched"

for file in "$dir/"*
do
   str=${file%%.*}
if [[ $file =~ $testseq ]];
then    
    echo $file
else   
    sox $file "${str}_16khz.wav" rate 16000
fi
    #   sox $file "${str}_pitched300.wav" pitch 300	
done
