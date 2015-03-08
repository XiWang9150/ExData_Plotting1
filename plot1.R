## Plotting 1

# set up directory
setwd("c:/Users/jewang/Desktop/EDA-Project-1")

# use to read in and process data
source("Data_Process.R")

# Create a blank png to plot
png(filename = "plot1.png", width = 480, height = 480, bg = "white")

# plot
hist(data2use$Global_active_power, main = "Global Active Power", col = "red"
    ,xlab = "Global Active Power (Kilowatts)")

# close the file
dev.off()