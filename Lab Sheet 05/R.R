setwd("C:\\Users\\ASUS\\Desktop\\New folder")
getwd()
delivery_time <- read.table("Exercise_Lab_05.txt", header=TRUE)
fix(delivery_time)
attach(delivery_time)

names(delivery_time) <- c("X1")
attach(delivery_time)
hist(X1,main="Histogram for Number of Shareholders",breaks=seq(20,70,length=9),right=FALSE)

?hist
#Part 3
#Assign class limits of the frequency distribution into a variable called "breaks"
breaks <- round(hist()$breaks)

#Assign frequency of the histogram into a variable called "freq"
freq <- hist$counts

#Assign mid point of each class into a variable called "mids"
mids <- hist$mids

#Creating the variable called "Classes" for the frequency distribution
classes <- c()

#Creating a "for" loop to assign classes of the frequency distribution into "Classes" variable created above.
for(i in 1:length(breaks)-1){
  classes[i] <- paste0("[", breaks[i], ", ", breaks[i+1], "]")
}

#Obtaining frequency distribution by combining the values of "Classes" & "freq" variables
#Bind rows used here to merge the columns with same length
cbind(Classes = classes, Frequency = freq)

#Part 4
#Using "cumsum" command we can get cumulative frequencies
cum.freq <- cumsum(freq)

#Creating a null variable called "new"
new <- c()

#Using "for" loop to store cumulative frequencies in order to get the ogive
for(i in 1:length(breaks)){
  if(i == 1){
    new[i] = 0
  } else {
    new[i] = cum.freq[i - 1]
  }
}

#Draw cumulative frequency polygon in a new plot
plot(breaks, new, type = 'l', main = "Cumulative Frequency Polygon for Shareholders",
     xlab = "Shareholders", ylab = "Cumulative Frequency", ylim = c(0, max(cum.freq)))

#Obtain upper limit of each class along with its cumulative frequency in a table
cbind(Upper = breaks, CumFreq = new)
