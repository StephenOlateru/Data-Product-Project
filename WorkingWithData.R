SerialNo <-c(1,2,3,4);
Age <-c(4,5,6,7);
data <- data.frame(SerialNo,Age)
data



# enter data using editor 
mydata <- data.frame(age=numeric(0), gender=character(0), weight=numeric(0))
mydata <- edit(mydata)
# note that without the assignment in the line above, 
# the edits are not saved! 

mydata