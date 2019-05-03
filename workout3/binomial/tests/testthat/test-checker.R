context("test the check functions")

test_that("test the check_prob()", {
  expect_error(check_prob(c(0.1,0.2)))
  expect_error(check_prob(2))
  expect_error(check_prob(-1))
  expect_true(check_prob(0.5))
})

test_that("test the check_trials()", {
  expect_error(check_trials(c(2,1)))
  expect_error(check_trials(-2))
  expect_error(check_trials(1.4))
  expect_true(check_trials(3))
})

test_that("test the check_success()", {
  expect_error(check_success(10,4))
  expect_error(check_success(-2,10))
  expect_error(check_success(1.5,10))
  expect_true(check_success(1:3,5))
})

