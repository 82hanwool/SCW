#This is PlotLifeExp.R script

#read the data into R

myDataFull <- read.table("gapminder.txt",header = TRUE)

#select data from Canada
Canada <- myDataFull[myDataFull$country=="Canada",]

#plot life exp

png("Canada.png") #opening a png device to write plot to

plot(Canada$year, Canada$lifeExp, type="l", col="blue")

dev.off() #Closese the device
