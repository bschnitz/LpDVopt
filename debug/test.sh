# !/bin/bash

# vim: set tw=65 :

# For HELP invoke this script without arguments!

# path_to_singular_executable="../../Singular/Singular"
path_to_singular_executable="/home/ben/data/coding/box/LpDVec/Singular/Singular"

# maximum memory usage allowed to Singular
ulimit -v 1024000
ulimit -H

function usage
{
cat << EOF

  SYNOPSIS:
  
    test.sh test-folder
  
  ARGUMENT:

    The folder, where one can find the test files
  
  DESCRIPTION:
  
    This script can be used to test the execution of the tests in
    the given test-folder. The content of every file in that
    folder is passed to Singular successively.
    The output of the tests will be stored in a folder named
    test-folder.'results' . This folder will be created, if it does
    not exist. Any files in it, which have the name of a choosen
    test file will be overwritten. You have to set the path to the
    Singular-executable by editing this script. If one of the
    tests fails, the result will be moved to
    test-folder.'results/failed' .

EOF
}


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

testfolder=$(realpath "$1")

tfname=${testfolder##*/}

mkdir -p "${tfname}.results"

for test in "$testfolder/"*; do
  tname=${test##*/}
  "$path_to_singular_executable" < "$test" \
     > "${tfname}.results/$tname"
  exit=$?
  if [[ $exit -gt 0 ]]; then
    mkdir -p "${tfname}.results/failed"
    mv "${tfname}.results/$tname" "${tfname}.results/failed"
  fi
done

exit 0
