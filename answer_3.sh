# 3

import pandas as pd

# use pandas to import the csv as a dataframe

data = pd.read_csv("CO-OPS__8729108__wl.csv")

# calculate the differences between each of the rows in the column " Water Level" using the function .diff
# save the differences as a variable

differences = data[' Water Level'].diff()
differences 

# add the list of differences to the prexisting dataframe

data['Differences_in_water_levels'] = differences
data

# find the maximum difference in the dataframe, and print that row

data[data['Differences_in_water_levels'] == data['Differences_in_water_levels'].max()]
