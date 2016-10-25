household_power_consumption <- read.csv("household_power_consumption.txt", sep=";")
household_power_consumption$Date <- as.Date(household_power_consumption$Date,format="%d/%m/%Y")
hpc <- subset(household_power_consumption, Date>="2007-02-01" & Date<="2007-02-02")
hpc$Global_active_power <- as.double(as.character(hpc$Global_active_power))

# Plot 1
par(mfrow=c(1,1))
hist(hpc$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, filename="plot1.png")
dev.off()
