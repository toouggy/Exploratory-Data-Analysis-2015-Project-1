################################################################################
##   Purpose:  Generating plot 2 from household power consumption.   ###########
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

##  Getting needed information and converting to numeric.
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "),
                     "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(subSetData$Global_active_power)

##  Generating plot.
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()
