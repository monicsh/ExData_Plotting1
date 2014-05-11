## Plot 2

## read records for 2-day period in february 2007
dataset <- read.table("household_power_consumption.txt",
           skip = 66637, nrow = 2880, sep = ";",
           col.names = colnames(read.table("household_power_consumption.txt", 
                                           nrow = 1, header = TRUE, sep = ";")))

## Making plot 2
wdays <- strptime(paste(dataset$Date, dataset$Time), format='%d/%m/%Y %H:%M:%S')
plot(wdays, dataset$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")