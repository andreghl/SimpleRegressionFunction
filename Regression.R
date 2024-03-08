# Regression

y <- sample(1:20, 30, replace=TRUE)

x <- sample(1:20, 30, replace=TRUE)

regress <- function(y, x) {
  
  dataset <- data.frame(y, x)
  
  # Sample Size
  n <- nrow(dataset)
  
  # Find mean of data
  
  meanX <- mean(dataset[,2])
  meanY <- mean(dataset[,1])
  
  # Calculating Beta 
  
  numerator <- sum((x - meanX) * (y - meanY))
  denominator <- sum((x - meanX) ^ 2) 
  
  # Calculating Estimators 
  
  slope <- numerator / denominator
  intercept <- meanY - slope * meanX 
  
  return(list("intercept" = intercept, "slope" = slope))

}

regress(y, x)

# Test and compare output with standard lm()

test <- lm(y~x)
summary(test)

