context("test the main functions")

test_that("test bin_choose",{
  expect_length(bin_choose(10,1:3),3)
  expect_error(bin_choose(10,11))
  expect_equal(bin_choose(10,1),10)
})

test_that("test bin_probability",{
  expect_length(bin_probability(10,1:3,0.1),3)
  expect_error(bin_probability(10,19,0.3))
  expect_equal(bin_probability(10,3,0.1),bin_choose(10,3) * 0.1 ^ 3 * (1 - 0.1) ^ (10 - 3))
})

test_that("test bin_distribution",{
  expect_length(bin_distribution(10,0.1),2)
  expect_error(bin_distribution(10,1.1))
  expect_is(bin_distribution(10,1),c("bindis", "dataframe"))
})

test_that("test bin_cumulative",{
  expect_length(bin_cumulative(10,0.1),3)
  expect_error(bin_cumulative(10,1.1))
  expect_is(bin_cumulative(10,1),c("bincum", "dataframe"))
})

