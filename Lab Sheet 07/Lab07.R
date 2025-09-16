setwd("C:\\Users\\ASUS\\Downloads\\IT24100500")
getwd()

#Exercise1 

punif(25, min=0, max=40, lower.tail=TRUE) - punif(10, min=0, max=40, lower.tail=TRUE)
      

#Exercise2

lambda <- 1/3
pexp(2, rate=lambda, lower.tail=TRUE)


#Exercise3
mu <- 100
sigma <- 15


pnorm(130, mean=mu, sd=sigma, lower.tail=FALSE)


qnorm(0.95, mean=mu, sd=sigma, lower.tail=TRUE)

