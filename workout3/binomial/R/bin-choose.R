#' @title calculate the choosing number
#' @description calculate the choosing number given the number of success and total trials
#' @param n the times of trials
#' @param k the times of success
#' @return the number of combinations
#' @export
#' @examples
#' n = 5
#' k = 3
#' bin_choose(n,k) #calculating the number of combinations of choosing 2 objects among 5.

bin_choose = function(n,k){
  check_trials(n)
  check_success(k,n)
  x = factorial(n)
  y = factorial(n - k) * factorial(k)
  return(x / y)
}
