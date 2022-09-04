#This script file downloads, unzips and stores our data
#It consists of two functions (retrieveandunzip, datainitialize)
#By default when running datainitialize function will run the plot functions and save the plot*.png files to directory
#The functions can also be called autonomously, the data is stored in a global table called "datastore"

#Global table "datastore" which will be the subset we plot on
datastore<-0

retrieveandunzip<- function(url="NULL", dest="NULL") {
  download.file(url, dest)  #download file from url to dest (where dest is zip file)
  unzip(dest)               #unzip the dest (zip file)
}

datainitialize<-function(){
  retrieveandunzip("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","tmpfile.zip")
  dat<-read.table("./household_power_consumption.txt",sep=";",na.strings="?",header=TRUE)
  sdat<-dat[dat$Date=="1/2/2007"|dat$Date=="2/2/2007",]
  
  date_and_time <-strptime(paste(datatemp$Date, datatemp$Time),"%d/%m/%Y %H:%M") #"%d/%m/%Y %H:%M:%S")
  sdat<-cbind(sdat,date_and_time)
  #datastore <- cbind(datastore,date_and_time)
  
  datastore<<-sdat
  
  createplot1()
  createplot2()
  createplot3()
  createplot4()
  
  return("Data was stored in datastore table, and individual plots were called and saved as .png files")
}

