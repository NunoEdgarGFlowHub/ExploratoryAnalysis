source("load_data.R")

par(mar=c(5,4,1,1), cex=.8)
with(consumption, 
     plot(Global_active_power, main="", type="l",
          ylab="Global Active Power (kW)", xlab="", axes = FALSE
          )
     )

axis(1, seq(0,by=1440, length.out=3), weekdays(seq(consumption$Date[1], by=1, length.out=3), abbreviate=T)) 
axis(2)
box()

dev.copy(device=png, width=480, height=480, file="plot2.png")
dev.off()


