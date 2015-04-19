## Coursera - Exploratory Data Analysis - Plotting Assignment 1
##

## This file is for loading the large dataset.
filename <- "C:/Users/rayab/Desktop/household_power_consumption.txt"
data <- read.table(filename,
                   header=TRUE,sep=";",
                   colClasses=c("character", "character", rep("numeric",7)),na="?")
dim(data) # 2075259 9
attach(data)

subset <- Date=="1/2/2007" | Date=="2/2/2007"
newData <- data[subset, ]
attach(newData)
x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData) # 2880   10
attach(newData)
