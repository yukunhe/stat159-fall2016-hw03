library(testthat)
source("../functions/regression-functions.R")

mod = lm(mpg ~ disp + hp, data = mtcars)

context("Test for residual sum of squares")

test-that("RSS works as expected", {
  expect_length(residual_sum_squares(mod), 1)
  expect_type(residual_sum_squares(mod), 'double')
  expect_equal(residual_sum_squares(mod), mod$sigma)
})

context("Test for total sum of squares")

test-that ("TSS works as expected", {
  expect_type(total_sum_squares(mod), 'double')
  expect_length(total_sum_squares(mod), 1)
  expect_equal(total_sum_squares(mod), sum((mtcars$mpg - mean(mtcars$mpg))^2))
})

context("Test for r squared")

test-that ('R-squared works as expected', {
  expect_type(r_squared(mod), 'double')
  expect_length(r_squared(mod), 1)
  expect_equal(r_squared(mod), summary(mod)$r.squared)
})

context("Test for residual standard error")

test-that ("Residual standard error works as expected", {
  expect_type(residual_std_error(mod), 'double')
  expect_length(rediual_std_error(mod), 1)
  expect_equal(residual_std_error(mod), summary(mod)$sigma)
})

context("Test for f statistic", {
  expect_type(f_statistic(mod), 'double')
  expect_length(f_statistic(mod), 1)
  expect_equal(f_statistic(mod), summary(mod)$fstatistic[1])
})




