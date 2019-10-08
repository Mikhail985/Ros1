#!/bin/bash
rm -f ./result.csv
#r=$(ls -1AR $1)
IFS=$'\n'
echo "Filename; Filepath; Extension; Permission; Size(bytes); Change; Duration (A/V)" >> result.csv
for i in $(ls -1AR $1)
	do
	if [[ $i == *: ]]
		then
		road=${i::${#i}-1}
	else
		if ! [ -d $road/$i ];
			then
			m=$(ls -l $road/$i | awk -F' ' '{print $1";"$5";"$7$6" "$8}')
			if [[ ${i##*.} == '' ]] || [[ `expr index "$i" .` = 0 ]]; then 
				form=''
			else
				form=${i##*.}
			fi
			Duration=""
			if file -ib $road/$i | grep -q 'video'; then
				Duration=$(ffmpeg -i $road/$i 2>&1| grep Duration | awk '{print $2}')
			elif file -ib $road/$i | grep -q 'audio'; then
				Duration=$(ffmpeg -i $road/$i 2>&1| grep Duration | awk '{print $2}')
			fi
			fullname=$road/$i
			fullroad=$(pwd)/$road/$i
			echo "$i; $fullroad; $form; $m; $Duration;" >> result.csv
		fi
	fi
	done
