
if (!exists("febdata")) {
        source("getdata.R")
}
png(filename = "plot3.png")
plot(febdata$Time, febdata$Sub_metering_1, type = "l", ylab = "Energy sub metering",
                        xlab = "")
lines(febdata$Time, febdata$Sub_metering_2, col = "red")
lines(febdata$Time, febdata$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lwd = 1)
dev.off()

