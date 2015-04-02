CHI SQ Test


library(MASS)
str(quine)
summary(aov(Days~Sex,data=quine))
# P value is greater than the (0.05) value, so there no evidence to suggest that there
# inst a correlation between the number of days females miss to the number of days
# male miss.

T1 <- xtabs(~Lrn+Age, data=quine)
T1
chisq.test(quine$Lrn,quine$Age)
#^^^ method from the video
chisq.test(T1)
#large chi square values leads us to reject the null hypothesis
#since the p value is 2.838*10^-9, the p value is very small and we can reject the 
#null hypothesis, now we run  a post HOC test
chisq.test(T1[,c(1,2)])
chisq.test(T1[,c(1,3)])
chisq.test(T1[,c(1,4)])
chisq.test(T1[,c(2,3)])
chisq.test(T1[,c(2,4)])
chisq.test(T1[,c(3,4)])
