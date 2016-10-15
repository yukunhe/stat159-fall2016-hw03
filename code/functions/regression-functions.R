data = read.csv('data/Advertising.csv', header= T)
mod.multi = lm(Sales ~ TV + Radio + Newspaper, data = data)

# The residual_sum_squares function takes the 'lm' object as input and the output is the
# $RSS$
residual_sum_squares = function(x){
  sum(x$residuals^2)
}

# The total_sum-squares function takes the 'lm' object as input and the output is the
# $TSS$
total_sum_squares = function(x) {
  residual_sum_squares(x)/(1-summary(x)$r.squared)
} 

# The r_squared function takes the 'lm' object as input and the output is $R^2$
r_squared = function(x) {
  (total_sum_squares(x) - residual_sum_squares(x))/total_sum_squares(x)
}

# The f_statistic function takes in 'lm' object and the output is f_statistic
f_statistic = function(x) {
  p = length(x$coefficients)-1
  ((total_sum_squares(x)-residual_sum_squares(x))/p)/(residual_sum_squares(x)/196)
}

# The residual_std_error function takes in the 'lm' object and the output is residual
# standard error
residual_std_error = function (x) {
  p = length(x$coefficients)-1
  sqrt(residual_sum_squares(x)/p)
}



