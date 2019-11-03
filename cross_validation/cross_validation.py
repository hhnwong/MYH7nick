import pandas as pd
import numpy as np
from sklearn.model_selection import StratifiedKFold

df = pd.read_csv('./myh7.csv', sep=",")


kf = df.StratifiedKFold(n_splits=10, random_state=42, shuffle=True)

print (kf)
