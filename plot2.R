household_power_consumption <- read.csv("household_power_consumption.txt", sep=";")
household_power_consumption$Date <- as.Date(household_power_consumption$Date,format="%d/%m/%Y")
hpc <- subset(household_power_consumption, Date>="2007-02-01" & Date<="2007-02-02")
hpc$Global_active_power <- as.double(as.character(hpc$Global_active_power))
datetime <- strptime(paste(hpc$Date,hpc$Time), format="%Y-%m-%d %H:%M:%S")

# Plot 2
par(mfrow=c(1,1))
plot(datetime, hpc$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, filename="plot2.png")
dev.off()
