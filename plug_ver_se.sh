input="plugin_list.txt"
while IFS= read -r line
do
        find . -type f -name "$line*.php" -print0 | xargs -0 grep -o -P "Version: [0-9]\.[0-9]+" --colour=always
done < "$input"
