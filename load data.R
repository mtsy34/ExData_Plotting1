library(base)
library(lubridate)

## Getting data ##

URL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
filename <- "Household Power Consumption.zip"
filepath <- "Household Power Consumption"

if(!file.exists(filename)) {
  download.file(URL, filename, mode="wb")
}

if(!file.exists(filepath)) {
  unzip(filename)
}

## Reading data ##
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na="?")
data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")


# Filtering to get only dates between 2007-02-01 and 2007-02-02

dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
data <- subset(data, Date %in% dates)

