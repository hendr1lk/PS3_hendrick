#!/usr/bin/env python

# import data using pandas
import pandas as pd
data = pd.read_csv("CO-OPS__8729108__wl.csv")

# isolate water_levels column
water_levels = data[' Water Level']

# set highest_water_level at 0, then run for loop to select highest value in column
highest_water_level = 0
for water_level in data[' Water Level']:
    if water_level > highest_water_level:
        highest_water_level = water_level

# print row with highest water level by selecting row in water level column that is equal to the highest_water_level found using the for loop
data[data[' Water Level'] == highest_water_level]
