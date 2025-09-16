setwd("C:\\Users\\Lenovo\\Desktop\\IT24610819")

# Q1
#(i)

#Its a Binomial distribution

#(ii)
n <- 50;
p <- 0.85;

#( P(X ≥ 47) = 1 - P(X ≤ 46))
prob_at_least_47 <- sum(dbinom(47:50, size = n, prob = p))
print(paste("P(X >= 47):", prob_at_least_47))

#Q2

#(i)
# X represents the number of customer calls received in one hour

#(ii)
# Poisson distribution

#(iii)
lambda <- 12
# P(X = 15)
prob_15_calls <- dpois(15, lambda = lambda)
print(paste("P(X = 15):", prob_15_calls))







