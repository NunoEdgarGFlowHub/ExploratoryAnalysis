source("load_data.R")
par(mar=c(4,4,1,1), cex=.8, mfcol=c(1,1))
hist(consumption$Global_active_power, 
     xlab="Global Active Power (kilowatts)",
     col="red", main="Global Active Power")
dev.copy(device=png, width=480, height=480, file="plot1.png")
dev.off()
