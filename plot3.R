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
subMetering1 <- as.numeric(subSetData$Sub_metering_1) 

 9
subMetering2 <- as.numeric(subSetData$Sub_metering_2) 

 10
subMetering3 <- as.numeric(subSetData$Sub_metering_3) 

 11

 

 12
png("plot3.png", width=480, height=480) 

 13
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="") 

 14
lines(datetime, subMetering2, type="l", col="red") 

 15
lines(datetime, subMetering3, type="l", col="blue") 

 16
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue")) 

 17
dev.off() 
