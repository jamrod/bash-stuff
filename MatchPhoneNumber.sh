num=$1$2
echo $
pat="^\([0-9]{3}\) [0-9]{3}-[0-9]{4}$"
if [[ $num =~ $pat ]]
then
  echo True
else
  echo False
fi