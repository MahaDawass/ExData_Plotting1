
###

setwd("C:/Users/Maha/Desktop/Training online/Explotoray data/week_1")

data <- read.table("household_power_consumption.txt",sep = ";" ,header = TRUE , stringsAsFactors=FALSE)

Exact_Date = data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(Exact_Date$Date, Exact_Date$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#### plots (2) 

globalActivePower <- as.numeric(Exact_Date$Global_active_power)

png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


