## Plotting 3

# set up directory
setwd("c:/Users/jewang/Desktop/EDA-Project-1")

# use to read in and process data
source("Data_Process.R")

# convert date & time here
data2use$Date <- as.Date(data2use$Date, "%d/%m/%Y")
data2use$Time <- paste(data2use$Date, data2use$Time, sep=" ")
data2use$Time <- strptime(data2use$Time, "%Y-%m-%d %H:%M:%S")

# create a blank png to plot
png(filename = "plot3.png", width = 480, height = 480, bg = "white")

# plot the png for the first time
plot(data2use$Time,data2use$Sub_metering_1,type="l"
     ,xlab="",ylab="Energy Sub Metering",col="black",lwd = 2)

# using lines function to add new lines on the existing png
lines(data2use$Time,data2use$Sub_metering_2,type="l"
      ,xlab="",ylab="Energy Sub Metering",col="red", lwd = 2)

# using lines function to add new lines on the existing png
lines(data2use$Time,data2use$Sub_metering_3,type="l"
      ,xlab="",ylab="Energy Sub Metering",col="blue", lwd = 2)

# Add legend on the top right
legend("topright", col=c("black","red","blue"), lwd = 2
       ,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# close the file
dev.off()