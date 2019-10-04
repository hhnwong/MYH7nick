#*************************************************************************
#
#   Program:    Annotate CSV
#   File:       Annotate_CSV.py
#   
#   Version:    Python 3
#   Date:       04.10.2019
#   
#   
#   Copyright:  (c) UCL / Nicholas Wong
#   Author:     Nicholas Wong
#   Address:    Biomolecular Structure & Modelling Unit,
#               Department of Biochemistry & Molecular Biology,
#               University College,
#               Gower Street,
#               London.
#               WC1E 6BT.
#   EMail:      zcbthhn@ucl.ac.uk

#*************************************************************************************************************************


import pandas as pd
import numpy as np

# Reading csv 
df = pd.read_csv('~/Documents/MYH7nick/snp/snp_out_031019/snp.csv', sep=",")

#Define the data you want to add
type=['snp']

#Create new column name ‘type’
df ['type'] = type

#Convert it back to csv file
df.to_csv('snp_annotated.csv')