#!/usr/bin/env python
# answer for problem set 3, question 2

# import pandas
# read in the csv file as a data frame
# isolate out maximum value from water level column using [] and print entire row

import pandas as pd
data = pd.read_csv("CO-OPS__8729108__wl.csv", index_col = 0)
data[data[' Water Level'] == data[' Water Level'].max()]


