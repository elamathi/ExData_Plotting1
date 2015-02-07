
dataFile <- "./data/household_power_consumption.txt" 

 2
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 

 3
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] 

 4

 

 5
#str(subSetData) 

 6
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")  

 7
globalActivePower <- as.numeric(subSetData$Global_active_power) 

 8
png("plot2.png", width=480, height=480) 

 9
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)") 

 10
dev.off() 
 





