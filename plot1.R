################################################################################
##   Purpose:  Generating plot 1 from household power consumption.   ###########
##   Date:  July 11, 2015.   ###################################################
##   Code by:  Francisco J. López  #############################################
################################################################################

##  Getting data in.
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE,
                   dec=".")

##  Selecting correct data set and subsetting.
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##  Looking at the subset variables.
str(subSetData)

##  Assigning numerical values to variable and plotting.
globalActivePower <- as.numeric(subSetData$Global_active_power)

##  Generating plot.
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()
