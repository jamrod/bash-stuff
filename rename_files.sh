#!bin/bash
dir=$1
if [[ -z $dir ]]; then
  echo "You must pass in a directory"
  exit 1
fi
for folder in $dir/*; do
  for file in $folder/*; do
    echo ${file}
    if ! [[  ${file} =~ .*windows ]]
    then
      if [[ ${file} =~ .*".yml" ]]
        then
#       echo rename ${file} ${file%%-gold.json}-cs-gold.json
#         distro=$(echo ${folder##distros/})
#         sed -i '' "s/${distro%%-cs}.yml/${distro}.yml/" $file
        mv ${file} ${file%%.yml}-cs.yml
      fi
    fi
  done
done
