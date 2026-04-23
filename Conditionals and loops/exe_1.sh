#! /bin/bash
#

#set -euox pipefail

echo "add the letter to repeat"
read letter


for (( i=1; i <= 10; i++ ))
do
	echo "$i - $letter"
done



