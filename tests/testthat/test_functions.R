context("Tests of package functions")

mock_data <- data.frame(
  va = c(1:10),
  vb = c(2:11),
  vc = factor(c(rep(1:2, 5)), labels = c("one", "two")),
  vd = c(rep(c("jeden", "dwa", "x", "y", "z"), 2)),
  stringsAsFactors = FALSE)

test_that("sum_columns returns vector of correct length", {
  expect_length((sum_columns(mock_data)), 2)
  expect_equal(sum_columns(mock_data)[[1]], 55)
})

test_that("return_class_specific_attr returns correct types", {
  expect_length(return_class_specific_attr(mock_data), 4)

  expect_type(return_class_specific_attr(mock_data)[[1]], "integer")
  expect_type(return_class_specific_attr(mock_data)[[3]], "character")
  expect_type(return_class_specific_attr(mock_data)[[4]], "character")

  expect_type(unlist(return_class_specific_attr(mock_data)[[1]]), "integer")
  expect_type(unlist(return_class_specific_attr(mock_data[[3]])), "integer")
  expect_type(unlist(return_class_specific_attr(mock_data[[4]])), "character")
})
