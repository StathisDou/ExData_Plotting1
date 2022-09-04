

createplot3<-function(){

  dev.set(3) #We set as active graphics device the index of PNG device
  png(filename = "plot3.png", width = 480, height = 480, units = "px")
  
  #create a blank plot with n
  with(datastore, plot(date_and_time, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering"))
  #parse data for sub meterings
  points(datastore$date_and_time, datastore$Sub_metering_1,type="l", col= "black")
  points(datastore$date_and_time, datastore$Sub_metering_2,type="l", col= "red")
  points(datastore$date_and_time, datastore$Sub_metering_3,type="l", col= "blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),col=c("black", "red", "blue"), lty=1, lwd=1)
  
  dev.off() #We release our graphics device
  return("Plot3 was saved to working directory as plot3.png")
  
}