#Download data (if not exist already)
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if (!file.exists("exdata-data-household_power_consumption.zip")) {
  download.file(url, destfile="exdata-data-household_power_consumption.zip", method="curl")
}
if (!file.exists("household_power_consumption.txt")) {
  unzip("exdata-data-household_power_consumption.zip")
}
rm(list = ls()) #Remove all existing variables
consumption_names <- read.csv("household_power_consumption.txt", sep=";", nrows = 1)
consumption <- read.csv("household_power_consumption.txt", sep=";", nrows = 2*24*60, skip=66636, stringsAsFactors=F, na.strings = "?")
names(consumption) <- names(consumption_names)
consumption$Date <- as.Date(consumption$Date, format="%d/%m/%Y")
#strptime(consumption$Time, format="%H:%M:%S")+consumption$Date

rm(consumption_names)
