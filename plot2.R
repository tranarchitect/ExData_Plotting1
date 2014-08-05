# change this folder to where you want to set as woring directotry
setwd("F:/UHM/Coursera/Data Science/4_Exploratary Data Analysis") 

# read and process data
Source("ReadData.R")

png(filename = "plot2.png", ## open the png device
    width = 480, height = 480)
par(col = "black") ## set default plotting color to black
with(data, plot(DateTime, Global.Active.Power,
                ylab = "Global Active Power (kilowatts)",
                xlab = "",
                col = "black",
                type = "s")
)
dev.off() ## close the png device