setwd("C:\\Users\\User\\Advance ML Lab\\Scripts\\Lab 1")
getwd()

return_rmse <- function(data_drug) {
  model = lm(data_drug$response ~ data_drug$dose + data_drug$sex)
  pred = predict(model, data_drug)
  actual = data_drug$response
  diff = actual-pred
  rmse = sqrt(sum(diff**2)/nrow(data_drug))
  return(rmse)
}

return_mean <- function(data_drug) {
  means = mean(data_drug$response)
  return(means)
}

drug = read.csv('C:\\Users\\User\\Advance ML Lab\\Resources\\drug2.csv')
drug1 = read.csv('C:\\Users\\User\\Advance ML Lab\\Resources\\drug21.csv')
drug2 = read.csv('C:\\Users\\User\\Advance ML Lab\\Resources\\drug22.csv')
drug3 = read.csv('C:\\Users\\User\\Advance ML Lab\\Resources\\drug23.csv')
drug4 = read.csv('C:\\Users\\User\\Advance ML Lab\\Resources\\drug24.csv')
drug5 = read.csv('C:\\Users\\User\\Advance ML Lab\\Resources\\drug25.csv')

rmse = return_rmse(drug)
rmse1 = return_rmse(drug1)
rmse2 = return_rmse(drug2)
rmse3 = return_rmse(drug3)
rmse4 = return_rmse(drug4)
rmse5 = return_rmse(drug5)

me = return_mean(drug)
me1 = return_mean(drug1)
me2 = return_mean(drug2)
me3 = return_mean(drug3)
me4 = return_mean(drug4)
me5 = return_mean(drug5)

rmse
rmse1
rmse2
rmse3
rmse4
rmse5

me
me1
me2
me3
me4
me5