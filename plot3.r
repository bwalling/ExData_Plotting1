household_power_consumption <- read.csv("C:/Users/bwalling/Dropbox/School/Coursera/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?")
hpc = subset(household_power_consumption, Date == "1/2/2007" | Date == "2/2/2007")
hpctime = cbind(hpc, "DateTime" = strptime(paste(hpc$Date,hpc$Time,sep=" "), "%d/%m/%Y %H:%M:%S"))
png("C:/Users/bwalling/Dropbox/School/Coursera/datasciencecoursera/ExData_Plotting1/plot3.png",width=480,height=480,units="px")
plot(hpctime$DateTime,c(hpctime$Sub_metering_1,hpctime$Sub_metering_2,hpctime$Sub_metering_3),type="l",xlab="",ylab="Energy sub metering",col=c("black","red","blue"))
lines(hpctime$DateTime,hpctime$Sub_metering_2,col="red")
lines(hpctime$DateTime,hpctime$Sub_metering_3,col="blue")
dev.off()