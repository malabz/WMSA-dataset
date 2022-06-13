#!/bin/bash

set -e

# please edit these lines on calling your programs
program_name="wmsa"
cmd="$program_name -c 0.95 -T 14 -w 150"
prog_alias="wmsa.0.95"


function help()
{
    echo "Help:"
    echo "$0 database"
    echo "database: the name on the dataset"
    echo -e "\033[31;1mPlease check this file when you use this script!!\033[0m"
    echo "This is used for $cmd"
}

# check the arugments
if test -z $1 
then
    echo "Error: please input the data set name. Type \`$0 help\` to get more information."
    exit 1
fi
if [ $1 == "help" ]
then
    help
    exit 0
fi

dataset="dataset/$1"
nowdir=`dirname $(readlink -f $0)`
datafolder=$(cd $nowdir/$dataset/in && find -name '*' | cut -c 3-)


exportfile="$nowdir/$dataset/$prog_alias.txt"

rm -rf $dataset/$program_name
mkdir -p $dataset/$program_name
rm -f $exportfile

date >> $exportfile
for data in $datafolder
do
    # $cmd $dataset/in/$data > $dataset/$program_name/$data # For MAFFT
    $cmd -i $dataset/in/$data -o $dataset/$program_name/$data  # For common programs
done
date >> $exportfile
echo "OK on running."

qscore=$nowdir'/src/git/qscore/bin/qscore'

for data in $datafolder
do
    $qscore -test $dataset/$program_name/$data -ref $dataset/ref/$data -ignoretestcase -ignorerefcase -truncname >> $exportfile
done
echo "OK on testing."