#!/bin/bash
dest_dir="/home/ubuntu/pdf_backup"

src_dir="/home/ubuntu/"

mkdir -p "$dest_dir"

while IFS= read -r -d '' file; do
	echo "$file"
	cp "$file" "$dest_dir"
	found=1
done < <(find "$src_dir" -type f -name '*.pdf' -print0)

if [ $found -eq 1 ]; then
	echo "YES"
else 
	echo"NO"
fi
