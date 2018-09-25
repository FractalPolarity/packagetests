context("Tests of package functions")

testthat::test_that("sum_columns returns vector of correct length", {
  testthat::expect_length((sum_columns(iris)), 4)
})

testthat::test_that("return_class_specific_attr returns correct types", {
  testthat::expect_length(return_class_specific_attr(iris), 5)
  testthat::expect_type(return_class_specific_attr(iris)[[1]], "double")
  testthat::expect_type(return_class_specific_attr(iris)[[5]], "character")

})
