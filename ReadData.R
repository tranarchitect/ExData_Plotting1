# check if the subfolder exists then create it
mainDir <- "./" ## current folder
subDir <- "Course_Project_1" ## subfolder
dir.create(file.path(mainDir, subDir), showWarnings = FALSE) ## turn off warning
setwd(file.path(mainDir, subDir)) ## set the subfolder as working folder for this assignment

# download the data file and unzip it
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipFile <- "household_power_consumption.zip"
download.file(url, destfile = zipFile)
unzip(zipFile)

# read data from the dates 2007-02-01 and 2007-02-02 (from row # #66638 to #69517)
dataFile <- "./household_power_consumption.txt"
data <- read.csv(file = dataFile, sep = ";",
                 header = FALSE, skip = 66637, 
                 nrows = 2880,
                 col.names = c("Date", "Time", "Global.Active.Power", "Global.Reactive.Power", "Voltage", "Global.Intensity", "Sub.Metering.1", "Sub.Metering.2", "Sub.Metering.3")
)

# converte Data and Time variables into Data and Time classess
data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")