## Plot 1

## read records for 2-day period in february 2007
dataset <- read.table("household_power_consumption.txt",
           skip = 66637, nrow = 2880, sep = ";",
           col.names = colnames(read.table("household_power_consumption.txt", 
                                           nrow = 1, header = TRUE, sep = ";")))
## make histogram of Global Active Power
hist(dataset$Global_active_power, main = paste("Global Active Power"), xlab = "Global Active Power (Kilowatts)", ylab ="Frequency", col = "red")