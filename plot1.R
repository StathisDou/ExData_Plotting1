

createplot1<-function(){
  dev.set(3) #We set as active graphics device the index of PNG device
  png(filename = "plot1.png", width = 480, height = 480, units = "px")
  hist(datastore$Global_active_power,col="red",main="Global Active Power",xlab = "Global Active Power (kilowatts)")
  dev.off() #We release our graphics device
  return("Plot1 was saved to working directory as plot1.png")
}