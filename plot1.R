#Coursera Course - Exploratory Data Analysis
#Author - Rahul Dewan

#Loading the data
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Subset the data 
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]  #Converting Date

#str(subSetData)

#Plot and Save the Graph
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()