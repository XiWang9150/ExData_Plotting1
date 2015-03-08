## Plotting 4

# set up directory
setwd("c:/Users/jewang/Desktop/EDA-Project-1")

# use to read in and process data
source("Data_Process.R")

# convert date & time here
data2use$Date <- as.Date(data2use$Date, "%d/%m/%Y")
data2use$Time <- paste(data2use$Date, data2use$Time, sep=" ")
data2use$Time <- strptime(data2use$Time, "%Y-%m-%d %H:%M:%S")

# create a blank png to plot
png(filename = "plot4.png", width = 480, height = 480, bg = "transparent")
# tell R that we are going to plot a 2 row * 2 column
par(mfrow = c(2,2))

####################### 1st plot #####################################
plot(data2use$Time,data2use$Global_active_power,type="l"
     ,xlab="",ylab="Global Active Power (kilowatts)")

####################### 2nd plot #####################################
plot(data2use$Time,data2use$Voltage,type="l"
     ,xlab="",ylab="Voltage")

####################### 3rd plot #####################################
plot(data2use$Time,data2use$Sub_metering_1,type="l"
     ,xlab="",ylab="Energy Sub Metering",col="black",lwd = 2)

lines(data2use$Time,data2use$Sub_metering_2,type="l"
      ,xlab="",ylab="Energy Sub Metering",col="red", lwd = 2)

lines(data2use$Time,data2use$Sub_metering_3,type="l"
      ,xlab="",ylab="Energy Sub Metering",col="blue", lwd = 2)

legend("topright", col=c("black","red","blue"), lwd = 2
       ,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

####################### 4th plot #####################################
plot(data2use$Time,data2use$Global_reactive_power,type="l"
     ,xlab="datetime",ylab="Global_reactive_power")

# close the file
dev.off()