#!/bin/bash
mkdir tar_tar

find ./ -name '*.c' | while read i
do
	echo "$i";
	cp $i ./tar_tar/$i.exe_c
done

echo ".c all change"

find ./ -name '*.h' | while read i
do
	echo "$i";
	cp $i ./tar_tar/$i.exe_h
done

tar -zcvf tar.tar tar_tar
rm -rf tar_tar
fex -u tar.tar
rm -rf tar.tar
