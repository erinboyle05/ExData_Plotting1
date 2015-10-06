# This file downloads the data from the web and only stores data
# from 2007-02-01 to 2007-02-02

if (!file.exists("household_power_consumption.txt")) {
        
        file_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(file_url, "householdpowerconsumption.zip", mode = "wb")
        unzip("householdpowerconsumption.zip")
}
data <- read.table("household_power_consumption.txt", header = TRUE,
                   sep = "?", colClasses =   )

data$Date <- as.date(data$Date)
data$Time <- strptime(data$Time)
5+1
