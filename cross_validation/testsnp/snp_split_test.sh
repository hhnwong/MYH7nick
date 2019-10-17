#!/bin/bash
file2=snp_final.csv
tail -n +2 snp_final.csv >> data2.csv
number=$(wc -l data2.csv)
shuf data2.csv 
split -l 46 -d data2.csv snp_


#for training set 1, testing set 1
cat  snp_02 snp_03 snp_04 snp_05 snp_06 snp_07 snp_08 snp_09 snp_00 >> snp_train1.csv
cat  ./snp_01 >> snp_test1.csv

#for training set 2, testing set 2
cat  snp_03 snp_04 snp_05 snp_06 snp_07 snp_08 snp_09 snp_00 snp_01 >> snp_train2.csv
cat  ./snp_02 >> snp_test2.csv

#for training set 3, testing set 3
cat  snp_02 snp_01 snp_04 snp_05 snp_06 snp_07 snp_08 snp_09 snp_00 >> snp_train3.csv
cat  ./snp_03 >> snp_test3.csv

#for training set 4, testing set 4
cat  snp_02 snp_03 snp_01 snp_05 snp_06 snp_07 snp_08 snp_09 snp_00 >> snp_train4.csv
cat  ./snp_04 >> snp_test4.csv

#for training set 5, testing set 5
cat  snp_02 snp_03 snp_04 snp_01 snp_06 snp_07 snp_08 snp_09 snp_00 >> snp_train5.csv
cat  ./snp_05 >> snp_test5.csv

#for training set 6, testing set 6
cat  snp_02 snp_03 snp_04 snp_05 snp_01 snp_07 snp_08 snp_09 snp_00 >> snp_train6.csv
cat  ./snp_06 >> snp_test6.csv

#for training set 7, testing set 7
cat  snp_02 snp_03 snp_04 snp_05 snp_06 snp_01 snp_08 snp_09 snp_00 >> snp_train7.csv
cat  ./snp_07 >> snp_test7.csv

#for training set 8, testing set 8
cat  snp_02 snp_03 snp_04 snp_05 snp_06 snp_07 snp_01 snp_09 snp_00 >> snp_train8.csv
cat  ./snp_08 >> snp_test8.csv

#for training set 9, testing set 9
cat  snp_02 snp_03 snp_04 snp_05 snp_06 snp_07 snp_08 snp_01 snp_00 >> snp_train9.csv
cat  ./snp_09 >> snp_test9.csv

#for training set 10, testing set 10
cat  snp_02 snp_03 snp_04 snp_05 snp_06 snp_07 snp_08 snp_09 snp_01 >> snp_train10.csv
cat  ./snp_00 >> snp_test10.csv

rm data2.csv snp_0* 


