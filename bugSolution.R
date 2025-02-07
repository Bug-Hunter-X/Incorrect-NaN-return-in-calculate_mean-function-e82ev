```R
#Corrected function to handle vectors with only NA values
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  }
  if(all(is.na(x))) {
    return(NA) # Handle vector with all NA values
  }
  sum_x <- sum(x, na.rm = TRUE) #removes NAs before sum
  mean_x <- sum_x / length(x[!is.na(x)]) #this is where error can occur
  return(mean_x)
}

# Example usage:
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(10, 20, NA, 30, 40)
vec3 <- numeric(0) #empty vector
vec4 <- c(NA,NA,NA)

print(calculate_mean(vec1)) # Correctly calculates the mean
print(calculate_mean(vec2)) # Correctly handles NA values
print(calculate_mean(vec3)) # Correctly handles empty vector
print(calculate_mean(vec4)) # Correctly handles vector with all NA values
```