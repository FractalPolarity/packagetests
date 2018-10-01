context("Tests of package functions")

mock_data <- data.frame(
  va = c(1:10),
  vb = c(2:11),
  vc = factor(c(rep(1:2, 5)), labels = c("one", "two")),
  vd = c(rep(c("one", "two", "x", "y", "z"), 2)),
  stringsAsFactors = FALSE)

# Test sum_columns function
test_that("sum_columns sums only numerical columns and returns vector of correct length", {
  expect_length((sum_columns(mock_data)), 2)
})

test_that("sum_columns returns correct values", {
  expect_equal(sum_columns(mock_data)[[1]], 55)
  expect_equal(sum_columns(mock_data)[[2]], 65)
})

# Test return_class_specific_attr function
test_that("return_class_specific_attr returns correct types", {
  expect_type(return_class_specific_attr(mock_data)[[1]], "integer")
  expect_type(return_class_specific_attr(mock_data)[[2]], "integer")
  expect_type(return_class_specific_attr(mock_data)[[3]], "character")
  expect_type(return_class_specific_attr(mock_data)[[4]], "character")

  expect_type(unlist(return_class_specific_attr(mock_data[[1]])), "integer")
  expect_type(unlist(return_class_specific_attr(mock_data[[1]])), "integer")
  expect_type(unlist(return_class_specific_attr(mock_data[[3]])), "integer")
  expect_type(unlist(return_class_specific_attr(mock_data[[4]])), "character")
})

# Testing get_column_names function
test_that("get_column names returns correct names", {
  expect_true(get_column_names(mock_data)[1] == "va")
  expect_true(get_column_names(mock_data)[2] == "vb")
  expect_true(get_column_names(mock_data)[3] == "vc")
  expect_true(get_column_names(mock_data)[4] == "vd")
})
