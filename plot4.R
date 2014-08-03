par(mar=c(6,4,1,1), cex=.8, mfcol=c(2,2))
source("plot2.R")
source("plot3.R")

with(consumption, 
     plot(Voltage, main="", type="l",
          xlab="", axes = FALSE
     )
)
axis(1, seq(0,by=1440, length.out=3), weekdays(seq(consumption$Date[1], by=1, length.out=3), abbreviate=T)) 
axis(2)
box()
title(sub="datetime")

with(consumption, 
     plot(Global_reactive_power, main="", type="l",
          xlab="", axes = FALSE
     )
)
title(sub="datetime")

axis(1, seq(0,by=1440, length.out=3), weekdays(seq(consumption$Date[1], by=1, length.out=3), abbreviate=T)) 
axis(2)
box()
dev.copy(device=png, width=480, height=480, file="plot4.png")
dev.off()