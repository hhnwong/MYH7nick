#!/bin/bash
file1=./pd_all_final.csv
tail -n +2 ./pd_all_final.csv >> data1.csv
head -1 ${file1} >> tmp1.csv
number=$(wc -l data1.csv)
shuf data1.csv 
split -l 248 -d data1.csv pd_


#for training set 1, testing set 1
cat tmp1.csv pd_02 pd_03 pd_04 pd_05 pd_06 pd_07 pd_08 pd_09 pd_00 >> pd_train1.csv
cat tmp1.csv ./pd_01 >> pd_test1.csv

#for training set 2, testing set 2
cat tmp1.csv pd_03 pd_04 pd_05 pd_06 pd_07 pd_08 pd_09 pd_00 pd_01 >> pd_train2.csv
cat tmp1.csv ./pd_02 >> pd_test2.csv

#for training set 3, testing set 3
cat tmp1.csv pd_02 pd_01 pd_04 pd_05 pd_06 pd_07 pd_08 pd_09 pd_00 >> pd_train3.csv
cat tmp1.csv ./pd_03 >> pd_test3.csv

#for training set 4, testing set 4
cat tmp1.csv pd_02 pd_03 pd_01 pd_05 pd_06 pd_07 pd_08 pd_09 pd_00 >> pd_train4.csv
cat tmp1.csv ./pd_04 >> pd_test4.csv

#for training set 5, testing set 5
cat tmp1.csv pd_02 pd_03 pd_04 pd_01 pd_06 pd_07 pd_08 pd_09 pd_00 >> pd_train5.csv
cat tmp1.csv ./pd_05 >> pd_test5.csv

#for training set 6, testing set 6
cat tmp1.csv pd_02 pd_03 pd_04 pd_05 pd_01 pd_07 pd_08 pd_09 pd_00 >> pd_train6.csv
cat tmp1.csv ./pd_06 >> pd_test6.csv

#for training set 7, testing set 7
cat tmp1.csv pd_02 pd_03 pd_04 pd_05 pd_06 pd_01 pd_08 pd_09 pd_00 >> pd_train7.csv
cat tmp1.csv ./pd_07 >> pd_test7.csv

#for training set 8, testing set 8
cat tmp1.csv pd_02 pd_03 pd_04 pd_05 pd_06 pd_07 pd_01 pd_09 pd_00 >> pd_train8.csv
cat tmp1.csv ./pd_08 >> pd_test8.csv

#for training set 9, testing set 9
cat tmp1.csv pd_02 pd_03 pd_04 pd_05 pd_06 pd_07 pd_08 pd_01 pd_00 >> pd_train9.csv
cat tmp1.csv ./pd_09 >> pd_test9.csv

#for training set 10, testing set 10
cat tmp1.csv pd_02 pd_03 pd_04 pd_05 pd_06 pd_07 pd_08 pd_09 pd_01 >> pd_train10.csv
cat tmp1.csv ./pd_00 >> pd_test10.csv

rm data1.csv pd_0* tmp1.csv


