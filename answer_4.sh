# 4

#!/usr/bin/env python

# Made a graph to show how water level has changed over time

import matplotlib.pyplot as plt
from matplotlib import style
import pandas as pd

# used pandas to isolate water level and date and time into two seperate columns

data = pd.read_csv("CO-OPS__8729108__wl.csv")
water_level = data[' Water Level']
date_time = data['Date Time']

# used matlab to plot date and time on the x axis and water level on the y

fig = plt.figure()
plt.plot(date_time, water_level)
plt.xlabel("Time")
plt.ylabel('Water Level')

# saved image 

fig.savefig('water_levels_over_time.png')
