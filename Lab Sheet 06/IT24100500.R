setwd("C:\\Users\\ASUS\\Downloads\\IT24100500")
getwd()

#PART 1
# i) Distribution:
#    X ~ Binomial(n = 50, p = 0.85)

# ii)P(X >= 47) = 1 - P(X <= 46) = 1 - pbinom(46, size=50, prob=0.85)
n <- 50
p <- 0.85

prob_at_least_47 <- 1 - pbinom(46, size = n, prob = p)
prob_at_least_47

#PART 2
# i) Random variable X = number of calls in an hour
# ii) Distribution: X ~ Poisson(lambda = 12)

# iii) Probability exactly 15 calls in an hour:
lambda <- 12
prob_exactly_15 <- dpois(15, lambda)
prob_exactly_15

cat(sprintf("P(X >= 47) for Binomial(50,0.85) = %.12f\n", prob_at_least_47))
cat(sprintf("P(X = 15) for Poisson(12) = %.12f\n", prob_exactly_15))