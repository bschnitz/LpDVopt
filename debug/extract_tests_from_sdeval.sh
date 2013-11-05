# !/bin/bash

# vim: set tw=65 :


function usage
{
cat << EOF

  SYNOPSIS:
  
  extract_tests_from_sdeval.sh path-to-sdeval-exportfolder
  
  ARGUMENT:
  
  The first and only argument of this script must be the path to
  an SDEval exportfolder.
  
  DESCRIPTION:
  
  This script can be used to extract Singular code from an SDEval
  exportfolder. The extracted code will be stored in a folder
  named 'tests'. This folder will be created, if it does not
  exist. Existing test-files in this folder will be overwritten,
  if tests with the same name are encountered in the
  exportfolder.

EOF
}

mkdir -p tests

if [ -z "$1" ]; then
  echo -e "\nERROR: expecting at least one argument!"
  usage
  exit 1
fi

if [ ! -d "$1" ]; then
  echo -e "\nERROR: directory '$1' does not exist!"
  usage
  exit 1
fi

if [ ! -d "$1/casSources" ]; then
  echo -e "\nERROR: directory '$1' is not a valid Exportfolder"
  usage
  exit 1
fi

casSources=$(realpath "$1")/casSources

for example in $(ls "$casSources"); do
  folder="$casSources/$example/Singular"
  ex_name="${example##*/}"
  if [ -d "$folder" ]; then
    cp "$folder/executablefile.sdc" "tests/$ex_name"
  fi
done

exit 0
