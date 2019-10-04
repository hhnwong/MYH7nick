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
df = pd.read_csv('', sep=",")

#Define the data you want to add
type=['pd']

#Create new column name ‘type’
df ['type'] = type

#Convert it back to csv file
df.to_csv('.csv')

