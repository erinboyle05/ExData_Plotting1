# This file downloads the data from the web and only stores data
# from 2007-02-01 to 2007-02-02

if (!file.exists("household_power_consumption.txt")) {
        
        file_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(file_url, "householdpowerconsumption.zip", mode = "wb")
        unzip("householdpowerconsumption.zip")
}
data <- read.table("household_power_consumption.txt", na.strings = "?",
                   stringsAsFactors = FALSE, header = TRUE,
                   sep = ";")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y" )

data$temp <- paste(data$Date, data$Time, sep = " ")
data$temp
data$Time <- strptime(data$temp, format = "%Y-%m-%d %H:%M:%S", tz = "EST")
febdata <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")


