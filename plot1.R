
dataFile <- "./data/household_power_consumption.txt" 

 2
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 

 3
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] 

 4

 

 5
#str(subSetData) 

 6
globalActivePower <- as.numeric(subSetData$Global_active_power) 

 7
png("plot1.png", width=480, height=480) 

 8
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") 

 9
dev.off() 
 


<<<<<<< HEAD



=======
>>>>>>> 83c1d61aa4ce5318c7091dcc3dd4043fbcb24a6a
