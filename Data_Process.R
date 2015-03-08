## This subroutine is used to process data

#set up directory
setwd("c:/Users/jewang/Desktop/EDA-Project-1")

#Read in all datas (bad choice). But, I have not found a way to filter data
#while reading

data <- read.table("household_power_consumption.txt",header=T,sep=";"
                   ,colClasses = c("character", "character", rep("numeric",7))
                   ,na="?")
data2use <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

##data2use$Date <- as.Date(data2use$Date,"%d%m%Y")
##data2use$Time <- paste(data2use$Date,data2use$Time,sep=" ")
##data2use$Time <- strptime(data2use$Time,"%Y-%m-%d %H:%M:%S")


### Option 2

## If write the useful data to a new file and re-read it in each process, 
## This may take less time
##write.table(data2use,file="data-to-use.txt")