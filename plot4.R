
if (!exists("febdata")) {
        source("getdata.R")
}
png(filename = "plot4.png")
par(mfrow = c(2,2))

plot(febdata$Time, febdata$Global_active_power, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")

plot(febdata$Time, febdata$Voltage, type ="l", ylab ="Voltage", xlab ="datetime")

plot(febdata$Time, febdata$Sub_metering_1, type = "l", ylab = "Energy sub metering",
     xlab = "")
lines(febdata$Time, febdata$Sub_metering_2, col = "red")
lines(febdata$Time, febdata$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lwd = 1)

plot(febdata$Time, febdata$Global_reactive_power, type="l",
     ylab="Global_reactive_power", xlab="datetime", lwd=0.5)
dev.off()
