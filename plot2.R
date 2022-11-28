data <- "C:\\Users\\HP\\Downloads\\exdata\\household_power_consumption.txt"
data <- read.csv(data, sep = ';', stringsAsFactors=FALSE, dec = '.')
subsetData <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
str(subsetData)

datetime <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
head(datetime)
globalActivePower <- as.numeric(subsetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

