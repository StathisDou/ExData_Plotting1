
createplot4<-function(){
  
  dev.set(3) #We set as active graphics device the index of PNG device
  png(filename = "plot4.png", width = 480, height = 480, units = "px")
  
  par(mfrow=c(2,2),mar=c(4,4,1,2))
  #Top left and bottom left are almost the same plots with scripts 2 and 3 changed to with calls and removed legend outline
  
  #Top left plot
  with(datastore, plot(date_and_time,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))
  #Top right plot
  with(datastore, plot(date_and_time,Voltage,type="l",xlab="datetime",ylab="Voltage"))
  #Bottom left plot
  with(datastore, plot(date_and_time, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
  points(datastore$date_and_time, datastore$Sub_metering_2,type="l", col= "red")
  points(datastore$date_and_time, datastore$Sub_metering_3,type="l", col= "blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),col=c("black", "red", "blue"), lty=1,bty="n")
  #Bottom right plot
  with(datastore, plot(date_and_time,Global_reactive_power,type="l",xlab="datetime"))
  
  dev.off() #We release our graphics device
  return("Plot4 was saved to working directory as plot2.png")
  
}