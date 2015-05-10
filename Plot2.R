data5 <- read.csv("C:/Users/1/Documents/RProjects/exdata-data-household_power_consumption/household_power_consumption.txt", 
                                  skip=66637,
                                  nrows=2880,
                                  na.strings = "?",
                                  header=F,
                                  sep=";")
names(data5) <- names(read.csv("C:/Users/1/Documents/RProjects/exdata-data-household_power_consumption/household_power_consumption.txt", nrows=1,sep=";"))
data5$DateTime <- as.POSIXct(paste(data5$Date, data5$Time, sep=" "),format="%d/%m/%Y %H:%M:%S")


png(filename="plot2.png", width=480, height=480)
plot(data5$DateTime, 
           data5$Global_active_power, 
           type="l",
           col="black", 
           xlab="", 
           ylab="Global Active Power (kilowatts)", 
           main="")
dev.off() 
