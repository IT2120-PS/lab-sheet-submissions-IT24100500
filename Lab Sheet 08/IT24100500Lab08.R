setwd("C:\\Users\\it24100500\\Desktop\\IT24100500")
getwd()

data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

popmn <- mean(Weight.kg.)
popvar <- var(Weight.kg.)
pop_dev <- sd (Weight.kg.)

samples <- c()
n <- c()

for(i in 1:25){
  s <- sample(Weight.kg.,6,replace=TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste('s',i))
}
colnames(samples) = n

s.means <- apply(samples,2,mean)
s.vars <- apply(samples,2,var)
s.dev <- apply(samples,2,sd)

samplemean <- mean(s.means)
sampledev <- sd(s.means)

popmn
sampledev
