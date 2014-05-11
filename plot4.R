## Plot 4

## read records for 2-day period in february 2007
dataset <- read.table("household_power_consumption.txt",
           skip = 66637, nrow = 2880, sep = ";",
           col.names = colnames(read.table("household_power_consumption.txt", 
                                           nrow = 1, header = TRUE, sep = ";")))

## Making plot 4
wdays <- strptime(paste(dataset$Date, dataset$Time), format='%d/%m/%Y %H:%M:%S')
par(mfrow = c(2, 2))
with(dataset, {
    plot(wdays, dataset$Global_active_power, type="l", xlab="", ylab="Global Active Power")
    plot(wdays, dataset$Voltage, type="l", xlab="datetime", ylab="Voltage")
    plot(wdays, dataset$Sub_metering_1,  type="l", xlab="", ylab="Energy sub metering")
    with(dataset, points(wdays, dataset$Sub_metering_2,  type="l", xlab="", col = "red"))
    with(dataset, points(wdays, dataset$Sub_metering_3,  type="l", xlab="", col = "blue"))
    legend("topright", lty = 1:1,  col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    plot(wdays, dataset$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
    
})