# import the dataset into r
  
str(data)
data_norm <- function(x) { ((x-min(x)) / (max(x)-min(x)))}
heart_norm <- as.data.frame(lapply(heart,data_norm))
summary(heart_norm)
heart_train <- heart_norm[1:200,]
heart_test <- heart_norm[201:303,]
library(class)
heart_pred <- knn(heart_train, heart_test, heart[1:200,14], k= 16)
table(heart_pred, heart[201:303, 14])

# keep changing the values of K