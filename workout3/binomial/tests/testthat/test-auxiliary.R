context("test the summary measures")

test_that("test aux_mean()",{
  expect_length(aux_mean(10,0.1),1)
  expect_equal(aux_mean(10,0.2),2)
  expect_is(aux_mean(10,0.4), "numeric")
})

test_that("test aux_variance()",{
  expect_length(aux_varriance(10,0.1),1)
  expect_equal(aux_varriance(10,0.2),1.6)
  expect_is(aux_mean(10,0.4), "numeric")
})

test_that("test aux_mode()",{
  expect_length(aux_mode(10,0.1),2)
  expect_length(aux_mode(5,0.3),1)
  expect_equal(aux_mode(11,0.4),4)
})

test_that("test aux_skewness()",{
  expect_length(aux_skewness(10,0.1),1)
  expect_equal(aux_skewness(10,0.2),(1 - 2 * 0.2) / (10 * 0.2 * (1 - 0.2)) ^ 0.5)
  expect_is(aux_skewness(10,0.4), "numeric")
})

test_that("test aux_kurtosis()",{
  expect_length(aux_Kurtosis(10,0.1),1)
  expect_equal(aux_Kurtosis(5,0.3),(1 - 6 * 0.3 * (1-0.3)) / (5 * 0.3 * (1-0.3)))
  expect_is(aux_Kurtosis(5,0.3), "numeric")
})
