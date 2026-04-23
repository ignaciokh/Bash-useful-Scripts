#! /bin/bash
#

contador=0
end=0

while true; do
	# there is no do while in bash so I have to work with this structure
	
	((contador++))
	#Dont have to add the $contador since after (()) the system undestand it eill evaluate a variable 
	
	if (( $contador % 2 == 0 )); then
		echo $contador
		((end++))
	fi
	
	if [ "$end" == 100 ]; then
		break
	fi
done


