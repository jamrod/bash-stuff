echo $1
if [ ${1^} == 'Prd' ] || [ $1 == 'prod' ]
  then
    echo I\'m prod
    echo ${2^}
  else
    echo I\'m not prod
fi