#*************************************************************************
#
#   Program:    Extract CSV Mutation
#   File:       Extract_CSV_columns.py
#   
#   Version:    Python 3
#   Date:       03.10.2019
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


import pandas
import numpy as np

# Reading csv 
df = pandas.read_csv('MYH7_table_DCM_HCM.csv', sep=",")

# Keep certain column
df = df[['AA1', 'Position', 'AA2', 'Phenotype']]

# Write altered dataframe to file
df.to_csv('DCM_HCM.mut', sep=' ', index=False)

