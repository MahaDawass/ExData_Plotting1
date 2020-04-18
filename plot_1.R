###

data <- read.table("Explotoray data\\household_power_consumption.txt",sep = ";" ,header = TRUE , stringsAsFactors=FALSE)

data$Date <- strptime(as.character(data$Date), "%d/%m/%Y")
data$Date <- format(data$Date,"%d/%m/%Y")
Global_active_power <- as.numeric(data$Global_active_power)

Exact_Date = data[data$Date %in% c("01/02/2007","02/02/2007") ,]


## plots (1) 

png("plot1.png", width=480, height=480)
hist(Global_active_power	, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

