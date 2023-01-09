pat="and"
declare -i count=0
while IFS= read -r line; do
	if [[ $line =~ $pat ]]; then
	count=$count+1
	fi
done < ./text.txt

echo $count