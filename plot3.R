## Plot 3

## read records for 2-day period in february 2007
dataset <- read.table("household_power_consumption.txt",
           skip = 66637, nrow = 2880, sep = ";",
           col.names = colnames(read.table("household_power_consumption.txt", 
                                           nrow = 1, header = TRUE, sep = ";")))
par(mfrow = c(1, 1), mar = c(4,4,2,2))

## Making Plot 3 
wdays <- strptime(paste(dataset$Date, dataset$Time), format='%d/%m/%Y %H:%M:%S')
plot(wdays, dataset$Sub_metering_1,  type="l", xlab="", ylab="Energy sub metering")
with(dataset, points(wdays, dataset$Sub_metering_2,  type="l", xlab="", col = "red"))
with(dataset, points(wdays, dataset$Sub_metering_3,  type="l", xlab="", col = "blue"))
legend("topright", lty = 1:1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1          ","Sub_metering_2","Sub_metering_3"),
       bty = "o", cex = .75)

