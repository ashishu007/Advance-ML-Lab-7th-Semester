setwd("C:\\Users\\User\\Documents\\AML_Lab")
x1 = read.csv('snsdata - Copy.csv')
head(x1)

x1$gradyear <- NULL
x1$gender <- NULL
x1$age <- NULL
#head(x1)
as.matrix(x1)

par(bg="grey40")
library(fpc)
ds <- dbscan(x1, eps = 0.2, minPts = 6, showplot=TRUE)
ds
plot(ds, x)
