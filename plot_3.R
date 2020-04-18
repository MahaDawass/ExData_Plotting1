### Exploratory data (Week_1)

setwd("C:/Users/Maha/Desktop/Training online/Explotoray data/week_1")
data <- read.table("household_power_consumption.txt",sep = ";" ,header = TRUE , stringsAsFactors=FALSE)

Exact_Date = data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(Exact_Date$Date, Exact_Date$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

globalActivePower <- as.numeric(Exact_Date$Global_active_power)
sub_metering1 <- as.numeric(Exact_Date$Sub_metering_1)
sub_metering2 <- as.numeric(Exact_Date$Sub_metering_2)
sub_metering3 <- as.numeric(Exact_Date$Sub_metering_3)



#### plots (3) 

png("plot3.png", width=480, height=480)
plot(datetime, sub_metering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sub_metering2, type="l", col="red")
lines(datetime, sub_metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
