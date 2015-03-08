## Plotting 2

# set up directory
setwd("c:/Users/jewang/Desktop/EDA-Project-1")

# use to read in and process data
source("Data_Process.R")

# convert date & time here
data2use$Date <- as.Date(data2use$Date, "%d/%m/%Y")
data2use$Time <- paste(data2use$Date, data2use$Time, sep=" ")
data2use$Time <- strptime(data2use$Time, "%Y-%m-%d %H:%M:%S")

# create a blank png to plot
png(filename = "plot2.png", width = 480, height = 480, bg = "transparent")

# plot
plot(data2use$Time,data2use$Global_active_power,type="l"
     ,xlab="",ylab="Global Active Power (kilowatts)")

# close the file
dev.off()