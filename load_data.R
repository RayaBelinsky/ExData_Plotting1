## Coursera - Exploratory Data Analysis - Plotting Assignment 1
##

## This file is for loading the large dataset.
filename <- "C:/Users/1/Documents/RProjects/exdata-data-household_power_consumption/household_power_consumption.txt"
data1 <- read.table(filename,
                   header=TRUE,sep=";",
                   colClasses=c("character", "character", rep("numeric",7)),na="?")
dim(data1) # 2075259 9
attach(data1)

subset <- Date=="1/2/2007" | Date=="2/2/2007"
newData <- data1[subset, ]
attach(newData)
x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData) # 2880   10
attach(newData)
