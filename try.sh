#!/bin/bash

echo "Enter the directory name"
read ok
mkdir $ok
cd $ok
echo $PWD
touch file{1,2,3,45}
ls
echo "feeling good" >file2
cat file2 file45
echo "Goodbye $USER"
clear

