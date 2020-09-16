---
title: "Lab 1"
author: "Regina Hansson (regha434) and Victor Lells (vicle728)"
date: '20XX-XX-XX'
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Uppgift 1 Simulering av normalfördelning

### 1) Visualisera fördelningarna i två histogram. Visualisera fördelningens pdf i samma graf.

Nedan simuleras normalfördelningen med olika antal dragningar.

```{r }
x1 <- rnorm(100, mean = 10, sd = 4)
x2 <- rnorm(10000, mean = 10, sd = 4)
```

I figurerna nedan visas resultatet av dragningarna som ett histogram tillsammans med täthetsfunktionen.

```{r, echo=FALSE}
hist(x1, probability = TRUE) 
xfit <- seq(0, 20, 0.1) 
yfit <- dnorm(xfit, mean = 10, sd = 4) 
lines(xfit, yfit, col="blue", lwd=2) 
```

```{r, echo=FALSE}
hist(x2, probability = TRUE) 
xfit <- seq(-5, 25, 0.1) 
yfit <- dnorm(xfit, mean = 10, sd = 4) 
lines(xfit, yfit, col="blue", lwd=2) 
```

### 2) Beskriv skillnaden mellan de olika graferna.

Vi kan se normalfördelningsformen tydligare om vi drar fler värden.

## Uppgift 2 Simulera och visualisera andra fördelningar

### Diskreta

```{r }
X1 <- rbinom(10000, size = 1, prob = 0.2)
X2 <- rbinom(10000, size = 20, prob = 0.1)
X3 <- rbinom(10000, size = 20, prob = 0.5)
X4 <- rgeom(10000, prob = 0.1) 
X5 <- rpois(10000, lambda = 10) 
```

# Behöver vi linjen också?

```{r, echo=FALSE}
hist(X1, probability = TRUE) 
```
```{r, echo=FALSE}
hist(X2, probability = TRUE) 
```
```{r, echo=FALSE}
hist(X3, probability = TRUE) 
```
```{r, echo=FALSE}
hist(X4, probability = TRUE) 
```
```{r, echo=FALSE}
hist(X5, probability = TRUE) 
```

### Kontinuerliga

```{r }
Y1 <- runif(10000, min = 0, max = 1) 
Y2 <- rexp(10000, rate = 3)
Y3 <- rgamma(10000, shape = 2, scale = 1)
Y4 <- rt(10000, df = 3) 
Y5 <- rbeta(10000, shape1 = 0.1, shape2 = 0.1) 
Y6 <- rbeta(10000, shape1 = 1,   shape2 = 1) 
Y7 <- rbeta(10000, shape1 = 10,  shape2 = 5) 
```

```{r, echo=FALSE}
hist(Y1, probability = TRUE) 
```
```{r, echo=FALSE}
hist(Y2, probability = TRUE) 
```
```{r, echo=FALSE}
hist(Y3, probability = TRUE) 
```
```{r, echo=FALSE}
hist(Y4, probability = TRUE) 
```
```{r, echo=FALSE}
hist(Y5, probability = TRUE) 
```
```{r, echo=FALSE}
hist(Y6, probability = TRUE) 
```
```{r, echo=FALSE}
hist(Y7, probability = TRUE) 
```
