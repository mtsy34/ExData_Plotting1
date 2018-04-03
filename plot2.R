source("load data.R")

# Plot 2

plot2 <- plot(data$Time, data$Global_active_power, ylab = "Global Active Power (kilowatts)", xlab ="", type = "l")
dev.copy(png, file = "plot2.png")
dev.off()

