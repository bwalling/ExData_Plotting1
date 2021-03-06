household_power_consumption <- read.csv("C:/Users/bwalling/Dropbox/School/Coursera/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?")
hpc = subset(household_power_consumption, Date == "1/2/2007" | Date == "2/2/2007")
hpctime = cbind(hpc, "DateTime" = strptime(paste(hpc$Date,hpc$Time,sep=" "), "%d/%m/%Y %H:%M:%S"))
png("C:/Users/bwalling/Dropbox/School/Coursera/datasciencecoursera/ExData_Plotting1/plot4.png",width=480,height=480,units="px")
par(mfrow=c(2,2))
plot(hpctime$DateTime,hpctime$Global_active_power,type="l",xlab="",ylab="Global Active Power")
plot(hpctime$DateTime,hpctime$Voltage,type="l",xlab="datetime",ylab="Voltage") # graph 2
plot(hpctime$DateTime,hpctime$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(hpctime$DateTime,hpctime$Sub_metering_2,col="red")
lines(hpctime$DateTime,hpctime$Sub_metering_3,col="blue")
plot(hpctime$DateTime,hpctime$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()