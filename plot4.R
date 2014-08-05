# change this folder to where you want to set as woring directotry
setwd("F:/UHM/Coursera/Data Science/4_Exploratary Data Analysis") 

# read and process data
Source("ReadData.R")

png(filename = "plot4.png", ## open the png device
    width = 480, height = 480)
par(col = "black") ## set default plotting color to black
par(mfrow = c(2,2)) ## 2 x 2 chart
par(mar = c(4.2,5,2,1.5)) ## set margin
with(data, plot(DateTime, Global.Active.Power, ## first chart
                col = "black", type = "l", xlab = ""))
with(data, plot(DateTime, Voltage,             ## second chart
                col = "black", type = "l"))
with(data, plot(DateTime, Sub.Metering.1,      ## third chart
                ylab = "Energy sub metering",
                xlab = "",
                col = "black",
                type = "n"))
with(data, lines(DateTime, Sub.Metering.1,
                 col = "black"))
with(data, lines(DateTime, Sub.Metering.2,
                 col = "red"))
with(data, lines(DateTime, Sub.Metering.3, 
                 col = "blue"))
legend("topright",
       pch = "_",
       col = c("black", "red", "blue"),
       bty = "n",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)
with(data, plot(DateTime, Global.Reactive.Power,  ## fourth chart
                col = "black", type = "l"))
dev.off() ## close the png device