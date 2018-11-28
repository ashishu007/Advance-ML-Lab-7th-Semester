library(class)
library(gmodels)
setwd("C:/Users/acer/Documents/NITESH/Machine Learning/7thSem")
data <- read.csv('diabetes.csv')
data$Outcome= as.factor(data$Outcome)
dt = sort(sample(nrow(data), nrow(data)*.6))
train<-data[dt,]
test<-data[-dt,]

sample1 = train[sample(nrow(train),replace = F, size = 0.6*nrow(train)),]
sample2 = train[sample(nrow(train),replace = F, size = 0.6*nrow(train)),]
sample3 = train[sample(nrow(train),replace = F, size = 0.6*nrow(train)),]
sample4 = train[sample(nrow(train),replace = F, size = 0.6*nrow(train)),]
sample5 = train[sample(nrow(train),replace = F, size = 0.6*nrow(train)),]
sample1
sample1_train_label = sample1[,9]
sample1_data = sample1[,c(1,2,3,4,5,6,7,8)]

sample2_train_label = sample2[,9]
sample2_data = sample2[,c(1,2,3,4,5,6,7,8)]

sample3_train_label = sample3[,9]
sample3_data = sample3[,c(1,2,3,4,5,6,7,8)]

sample4_train_label = sample4[,9]
sample4_data = sample4[,c(1,2,3,4,5,6,7,8)]

sample5_train_label = sample5[,9]
sample5_data = sample5[,c(1,2,3,4,5,6,7,8)]

test_label = test[,9]
test_data = test[,c(1,2,3,4,5,6,7,8)]

sample1_test_model <- knn(train = sample1_data, test = test_data,cl = sample1_train_label, k = 50)
sample2_test_model <- knn(train = sample2_data, test = test_data,cl = sample2_train_label, k = 50)
sample3_test_model <- knn(train = sample3_data, test = test_data,cl = sample3_train_label, k = 50)
sample4_test_model <- knn(train = sample4_data, test = test_data,cl = sample4_train_label, k = 50)
sample5_test_model <- knn(train = sample5_data, test = test_data,cl = sample5_train_label, k = 50)

table1 = CrossTable(x = test_label,y = sample1_test_model,prop.chisq = FALSE)
accuracy1 = sum(diag(table1$t))/sum(table1$t)

table2 = CrossTable(x = test_label,y = sample2_test_model,prop.chisq = FALSE)
accuracy2 = sum(diag(table2$t))/sum(table2$t)

table3 = CrossTable(x = test_label,y = sample3_test_model,prop.chisq = FALSE)
accuracy3 = sum(diag(table3$t))/sum(table3$t)

table4 = CrossTable(x = test_label,y = sample4_test_model,prop.chisq = FALSE)
accuracy4 = sum(diag(table4$t))/sum(table4$t)

table5 = CrossTable(x = test_label,y = sample5_test_model,prop.chisq = FALSE)
accuracy5 = sum(diag(table5$t))/sum(table5$t)


k = as.integer(sample1_test_model) + as.integer(sample2_test_model) + as.integer(sample3_test_model) + as.integer(sample4_test_model) + as.integer(sample5_test_model) 

for (i in 1:nrow(test_data)) {
  if (k[i]>5) {
    k[i]=1
  }
  else{
    k[i]=0
  }
}
k = as.factor(k)
table_essemble = CrossTable(x = test_label,y = k,prop.chisq = FALSE)
accuracy_essemble = sum(diag(table_essemble$t))/sum(table_essemble$t)
