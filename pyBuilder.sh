#!/bin/bash

# generate an empty python project framework
# usage: pyBuild [-w workspace direction] [project name]
usage(){
    echo "Usage:"
    echo "pyBuild [-w workspace direction] [project name]"
    exit -1
}
ws=.
args="`getopt -u -q -o "hw:" -l "help" -- "$@"`"
[ $? -ne 0 ] && usage

set -- ${args}

while [ -n "$1" ]; do
    case "$1" in
        # set workspace
        -w) ws=$2
            shift;;

        -h|--help) 
            usage
            shift;;

        --) shift
            break;;

        *)  usage
    esac
    shift
done

# set project name
for param in "$@";do
    proj_name=$param
done


cd $ws
mkdir $proj_name
cd $proj_name
mkdir -p bin/${proj_name}_your_exec_file && mkdir docs && mkdir $proj_name && mkdir tests && touch README.md && touch requirements.txt && touch setup.py && touch docs/abc.rst && touch docs/conf.py && touch main.py && touch init.py && touch tests/test_main.py && touch tests/init.py
