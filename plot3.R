source("load_data.R")

par(mar=c(5,4,1,1), cex=.8)
with(consumption, 
     plot(Sub_metering_1, main="", type="l",
          ylab="Energy sub metering", xlab="", axes = FALSE
          )
     )
lines(consumption$Sub_metering_2, col="red")
lines(consumption$Sub_metering_3, col="blue")

axis(1, seq(0,by=1440, length.out=3), weekdays(seq(consumption$Date[1], by=1, length.out=3), abbreviate=T)) 
axis(2)
box()


legend("topright", legend=names(consumption[,7:9]), fill=c(1,2,4), cex=.8)

dev.copy(device=png, width=480, height=480, file="plot3.png")
dev.off()


