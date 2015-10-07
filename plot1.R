
if (!exists("febdata")) {
        source("getdata.R")
}

png(filename = "plot1.png")
hist(febdata$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()
