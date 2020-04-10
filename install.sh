#! /bin/bash

# add alias in .bashrc

basepath=$(cd `dirname $0`; pwd)
echo $basepath
bashrc=$HOME/.bashrc
basepath=$basepath/pyBuilder.sh
sed -i '/alias pyBuild/d' $bashrc

echo alias pyBuild="$basepath" >> $bashrc
