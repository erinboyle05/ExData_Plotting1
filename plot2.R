
if (!exists("febdata")) {
        source("getdata.R")
}
png(filename = "plot2.png")
plot(febdata$Time, febdata$Global_active_power, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
