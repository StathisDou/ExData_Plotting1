
createplot2<-function(){
  dev.set(3) #We set as active graphics device the index of PNG device
  png(filename = "plot2.png", width = 480, height = 480, units = "px")
  plot(datastore$date_and_time, datastore$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  dev.off() #We release our graphics device
  return("Plot2 was saved to working directory as plot2.png")
}