# change this folder to where you want to set as woring directotry
setwd("F:/UHM/Coursera/Data Science/4_Exploratary Data Analysis") 

# read and process data
Source("ReadData.R")

png(filename = "plot3.png", ## open the png device
    width = 480, height = 480)
par(col = "black") ## set default plotting color to black
with(data,
     plot(DateTime, Sub.Metering.1,
          ylab = "Energy sub metering",
          xlab = "",
          col = "black",
          type = "n")
)
with(data, lines(DateTime, Sub.Metering.1, col = "black"))
with(data, lines(DateTime, Sub.Metering.2, col = "red"))
with(data, lines(DateTime, Sub.Metering.3, col = "blue"))
legend("topright",
       pch = "-",
       col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)
dev.off() ## close the png device