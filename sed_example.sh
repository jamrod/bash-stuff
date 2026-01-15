# sed example:  sed 's/replace_this/with_this/g'
# gets all the name of all folders ending with -cs in the distros folder
ls -d distros/*-cs | sed -e 's/distros\///g'

# replace HKEY_LOCAL_MACHINE with HKLM:
sed 's/HKEY_LOCAL_MACHINE/HKLM:/' scratch/output_file.yaml > scratch/sed_test.yaml
