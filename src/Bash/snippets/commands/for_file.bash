# Iterate through every line of a regular text file

declare file_path='/path/to/file'
declare line=''

IFS='
'
for line in $(<${file_path}); do
  unset IFS
  echo "$line"
done
