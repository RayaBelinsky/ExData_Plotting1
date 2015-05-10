data5 <- read.csv("C:/Users/1/Documents/RProjects/exdata-data-household_power_consumption/household_power_consumption.txt", 
                                  skip=66637,
                                  nrows=2880,
                                  na.strings = "?",
                                  header=F,
                                  sep=";")
names(data5) <- names(read.csv("C:/Users/1/Documents/RProjects/exdata-data-household_power_consumption/household_power_consumption.txt", nrows=1,sep=";"))
data5$Date <- as.Date(data5$Date, format="%d/%m/%y")
data5$Time <- strptime(data5$Time, format="%H:%M:%S")

png(filename="plot1.png", width=480, height=480)
hist(data5$Global_active_power, 
           col="#ff2500", 
           xlab="Global Active Power (kilowatts)", 
           main="Global Active Power")
dev.off()
