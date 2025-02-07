```R
# This function attempts to calculate the mean of a vector, but it contains a subtle error.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  }
  sum_x <- sum(x, na.rm = TRUE) #removes NAs before sum
  mean_x <- sum_x / length(x) #this is where error can occur
  return(mean_x)
}

# Example usage:
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(10, 20, NA, 30, 40)
vec3 <- numeric(0) #empty vector

print(calculate_mean(vec1)) # Correctly calculates the mean
print(calculate_mean(vec2)) # Correctly handles NA values
print(calculate_mean(vec3)) # Correctly handles empty vector

#The error occurs when dealing with a vector containing only NA values
vec4 <- c(NA,NA,NA)
print(calculate_mean(vec4)) #incorrectly returns NaN, should return NA
```