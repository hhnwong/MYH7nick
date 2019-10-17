#!/bin/bash
sh ./snp_split_test.sh
sh ./pd_split_test.sh

#combine pd snp set 1
cat pd_test1.csv snp_test1.csv > test1.csv
cat pd_train1.csv snp_train1.csv > train1.csv

#combine pd snp set 2
cat pd_test2.csv snp_test2.csv > test2.csv
cat pd_train2.csv snp_train2.csv > train2.csv

#combine pd snp set 3
cat pd_test3.csv snp_test3.csv > test3.csv
cat pd_train3.csv snp_train3.csv > train3.csv

#combine pd snp set 4
cat pd_test4.csv snp_test4.csv > test4.csv
cat pd_train4.csv snp_train4.csv > train4.csv

#combine pd snp set 5
cat pd_test5.csv snp_test5.csv > test5.csv
cat pd_train5.csv snp_train5.csv > train5.csv

#combine pd snp set 6
cat pd_test6.csv snp_test6.csv > test6.csv
cat pd_train6.csv snp_train6.csv > train6.csv

#combine pd snp set 7
cat pd_test7.csv snp_test7.csv > test7.csv
cat pd_train7.csv snp_train7.csv > train7.csv

#combine pd snp set 8
cat pd_test8.csv snp_test8.csv > test8.csv
cat pd_train8.csv snp_train8.csv > train8.csv

#combine pd snp set 9
cat pd_test9.csv snp_test9.csv > test9.csv
cat pd_train9.csv snp_train9.csv > train9.csv

#combine pd snp set 10
cat pd_test10.csv snp_test10.csv > test10.csv
cat pd_train10.csv snp_train10.csv > train10.csv

rm snp_train*.csv snp_test*.csv pd_train*.csv pd_test*.csv
