setwd("C:\\Users\\User\\Documents\\AML_Lab")
input = read.csv("iris.csv")
names(input)
str(input)

matrix_form1 = matrix(c(input$sepal_len, input$sepal_wid, input$petal_len, input$petal_wid), ncol=4)
m1 = cov(matrix_form1)
m1

## Normalize the input feature. 
input$sepal_len1 = (input$sepal_len - mean(input$sepal_len) )/sd(input$sepal_len)
input$sepal_wid1 = (input$sepal_wid - mean(input$sepal_wid))/sd(input$sepal_wid)
input$petal_len1 = (input$petal_len - mean(input$petal_len))/sd(input$petal_len)
input$petal_wid1 = (input$petal_wid - mean(input$petal_wid))/sd(input$petal_wid)

##Get the covarience matrix and eigen vector.
matrix_form = matrix(c(input$sepal_len1, input$sepal_wid1, input$petal_len1, input$petal_wid1), ncol=4)
m = cov(matrix_form)
m

eigenV = eigen(m)
eigenV$vectors
ev = eigenV$values
ev
pca1 = ev[1]
pca1
pca2 = ev[2]
pca2

model = prcomp(input[,1:4], scale=TRUE)
#model = prcomp(matrix_form, scale=TRUE)
model$sdev
model$rotation
model$center
model$scale

model$sdev^2 / sum(model$sdev^2)
plot(model)

#input[,1:4]
#matrix_form[,1:4]
