context("Tests of package functions")

mock_data <- data.table::data.table(va = c(1, 5, 4), vb = c(3, 7, 6), vc = c("one", "two", "three"))

testthat::test_that("sum_columns returns vector of correct length", {
  testthat::expect_length((sum_columns(mock_data)), 2)
})

testthat::test_that("return_class_specific_attr returns correct types", {
  testthat::expect_length(return_class_specific_attr(mock_data), 3)
  testthat::expect_type(return_class_specific_attr(mock_data)[[1]], "double")
  testthat::expect_type(return_class_specific_attr(mock_data)[[3]], "character")
})
