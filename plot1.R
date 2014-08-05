# change this folder to where you want to set as woring directotry
setwd("F:/UHM/Coursera/Data Science/4_Exploratary Data Analysis") 

# read and process data
source("ReadData.R")

# plot the histogram chart to 480x480 png file
png(filename = "plot1.png", ## open the png device
    width = 480, height = 480)
par(col = "black") ## set default plotting color to black
with(data, hist(Global.Active.Power,
                xlab = "Global Active Power (kilowatts)",
                ylab = "Frequency",
                main = "Global Active Power",
                col = "red")
)
dev.off() ## close the png device