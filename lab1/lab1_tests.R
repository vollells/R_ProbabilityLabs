#Uppgift 3.1.1
#(1)

x1 <- rnorm(100, mean = 10, sd = 4)
x2 <- rnorm(10000, mean = 10, sd = 4)

hist(x1, probability = TRUE) 
xfit <- seq(0, 20, 0.1) 
yfit <- dnorm(xfit, mean = 10, sd = 4) 
lines(xfit, yfit, col="blue", lwd=2) 

hist(x2, probability = TRUE) 
xfit <- seq(-5, 25, 0.1) 
yfit <- dnorm(xfit, mean = 10, sd = 4) 
lines(xfit, yfit, col="blue", lwd=2) 


##Uppgift 3.1.2

binom1 <- rbinom(10000,size=1, prob = 0.2 )
hist(binom1, probability = TRUE)
xfit <- seq(0, 1, 1) 
yfit <- dbinom(xfit, size=1, prob = 0.2 )
lines(xfit, yfit, col="blue", lwd=2) 

binom2 <- rbinom(10000,size=20, prob = 0.1 )
hist(binom2, probability = TRUE)
xfit <- seq(0, 8, 1) 
yfit <- dbinom(xfit, size=20, prob = 0.1 )
lines(xfit, yfit, col="blue", lwd=2) 

binom3 <- rbinom(10000,size=20, prob = 0.5 )
hist(binom3, probability = TRUE)
xfit <- seq(0, 20, 1) 
yfit <- dbinom(xfit, size=20, prob = 0.5 )
lines(xfit, yfit, col="blue", lwd=2) 

geo1 <- rgeom(10000, 0.1)
hist(geo1, probability = TRUE)
xfit <- seq(0, 120, 1) 
yfit <- dgeom(xfit, 0.1)
lines(xfit, yfit, col="blue", lwd=2) 

pois1 <- rpois(10000, 10)
hist(pois1, probability = TRUE)
xfit <- seq(0, 25, 1) 
yfit <- dpois(xfit, 10 )
lines(xfit, yfit, col="blue", lwd=2) 

likformig <- runif(10000, 0, 1)
hist(likformig, probability = TRUE)
xfit <- seq(0, 20, 1) 
yfit <- dunif(xfit, 0,1)
lines(xfit, yfit, col="blue", lwd=2) 

exp1 <- rexp(10000, 3)
hist(exp1, probability = TRUE)
xfit <- seq(0, 5, 1) 
yfit <- dexp(xfit, 3)
lines(xfit, yfit, col="blue", lwd=2) 

gamma1 <- rgamma(10000, 2, 1)
hist(gamma1, probability = TRUE)
xfit <- seq(0, 20, 1) 
yfit <- dgamma(xfit, 2,1)
lines(xfit, yfit, col="blue", lwd=2) 

student <- rt(10000, 3)
hist(student, probability = TRUE)
xfit <- seq(-20, 20, 1) 
yfit <- dt(xfit, 3 )
lines(xfit, yfit, col="blue", lwd=2) 

beta1 <- rbeta(10000, 0.1, 0.1)
hist(beta1, probability = TRUE)
xfit <- seq(0, 1, 0.01) 
yfit <- dbeta(xfit, 0.1, 0.1)
lines(xfit, yfit, col="blue", lwd=2) 

beta1 <- rbeta(10000, 1, 1)
hist(beta1, probability = TRUE)
xfit <- seq(0, 1, 0.01) 
yfit <- dbeta(xfit, 1, 1)
lines(xfit, yfit, col="blue", lwd=2) 

beta1 <- rbeta(10000, 10, 5)
hist(beta1, probability = TRUE)
xfit <- seq(0, 1, 0.01) 
yfit <- dbeta(xfit, 10, 5)
lines(xfit, yfit, col="blue", lwd=2) 

#Uppgift 3.1.3

binom1 <- rbinom(1000, size = 10000, prob = 0.001 )
hist(binom1, probability = TRUE)
xfit <- seq(0, 20, 1) 
yfit <- dbinom(xfit, 10000, 0.001)
lines(xfit, yfit, col="blue", lwd=2) 

#^ Represents V

pois1 <- rpois(10000, 10)
hist(pois1, probability = TRUE)
xfit <- seq(0, 25, 1) 
yfit <- dpois(xfit, 10)
lines(xfit, yfit, col="blue", lwd=2) 

#-------

student <- rt(1000, 10000)
hist(student, probability = TRUE)
xfit <- seq(-5, 5, 1) 
yfit <- dt(xfit, 10000)
lines(xfit, yfit, col="blue", lwd=2) 


#^ Represents V

normal <- rnorm(1000, 0, 1)
hist(normal, probability = TRUE)
xfit <- seq(-5, 5, 1) 
yfit <- dnorm(xfit, 0, 1)
lines(xfit, yfit, col="blue", lwd=2) 


#Uppgift 3.1.4

binom <- rbinom(10000, 10, 0.1)
sum(binom==0)

#X<0
#CDF
norm <- pnorm(0,0,1, TRUE)
norm

#Test
norm <- rnorm(10000,0,1)
sum(norm<0)/10000


#-1<X<1
#CDF
normleft <- pnorm(-1,0,1, TRUE)
normright  <- pnorm(1,0,1, TRUE)
normright - normleft

#Test
norm <- rnorm(10000,0,1)
(sum(norm<1)-sum(norm< -1))/10000


#1.96 < X
#CDF
norm  <- pnorm(1.96,0,1, TRUE)
norm

#Test
norm <- rnorm(10000,0,1)
sum(norm<1.96)/10000


#0 < Y < 10 
#CDF
binomleft <- pbinom(0,10,0.1) 
binomright <- pbinom(9,10,0.1)
binomright - binomleft

#Test
binom <- rbinom(10000,10,0.1) 
(sum(binom<10)-sum(binom==0))/10000

#Y=0
#CDF
binomleft <- pbinom(0,10,0.1) 
binomleft

#Test
binom <- rbinom(10000,10,0.1) 
sum(binom==0)/10000


#0 =< Y =< 10
#CDF
binomright <- pbinom(10,10,0.1)
binomright

#Test
binom <- rbinom(10000,10,0.1) 
(sum(binom<=10)-sum(binom<0))/10000


#3.1.5
#1
#Första Systemet
binom <- rbinom(10000,337,0.1)
sum(binom)/10000

#Nya Systemet
unif <- runif(10000,0.02,0.16)
binom <- rbinom(10000,337,unif)
sum(binom)/10000

#2
#Första Systemet
binomOld <- rbinom(10000,337,0.1)
#Nya Systemet
unif <- runif(10000,0.02,0.16)
binomNew <- rbinom(10000,337,unif)
sum(binomOld<binomNew)/10000

#3
#Första Systemet
binom <- rbinom(10000,337,0.1)
sum(binom>50)/10000

#Nya Systemet
unif <- runif(10000,0.02,0.16)
binom <- rbinom(10000,337,unif)
sum(binom>50)/10000


#3.2.1
#1 E(X) = 2 | E(Y) = 1
#2
seq <- c()
for(j in 1:3){
    for(i in 1:10){
        seq <- c(seq, i*10^j) 
    }
}
meansX <- c()
meansY <- c()
for (n in seq){
    binom <- rbinom(n,10,0.2)
    meansX <- c(meansX, mean(binom))
    gamma <- rgamma(n,2,2)
    meansY <- c(meansY, mean(gamma))
}
plot(seq,meansX,type="l")
plot(seq,meansY, type="l")

