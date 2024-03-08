# Regression

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
  
  return(list(intercept, slope))
}

regress(Maastricht, DeBilt)

