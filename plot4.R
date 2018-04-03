source("load data.R")

# Plot 4

par(mfrow = c(2,2))

## Plot 1
plot(data$Time, data$Global_active_power, ylab = "Global Active Power (kilowatts)", xlab ="", type = "l")

## Plot 2
plot(data$Time, data$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")

## Plot 3
with(data, plot(Time, Sub_metering_1, type = "l", xlab="", ylab = "Energy sub metering"))
lines(data$Time, data$Sub_metering_2, col = "red")
lines(data$Time, data$Sub_metering_3, col = "blue")
legend("topright", lty = 1, lwd = 3, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Additional new plot
plot(data$Time, data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.copy(png, "plot4.png")
dev.off()
