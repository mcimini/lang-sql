counter=0

for f in ./answers/*.tbl; do
  if grep -q -e ": TABLE" "$f" 
  then 
	  let counter++
  else 
	  STR=""
  fi
done


if [ "$counter" -gt 0 ];
	then
		echo "Some query tests are not successful"
	else
		echo "All query tests are successful."
fi