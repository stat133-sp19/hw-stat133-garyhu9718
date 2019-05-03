#' @title binomial probabilities
#' @description calculate the probabilities of certain number of times of success
#' @param n the total times of trials
#' @param k the success times
#' @param the probabilty of success of one single trial
#' @return the probability of succeding n times
#' @export
#' @example
#' bin_probability(10,5,0.3)



bin_probability = function(n,k,p){
  check_prob(p)
  check_success(k,n)
  check_prob(p)
  x = bin_choose(n,k) * p ^ k * (1 - p) ^ (n - k)
  return(x)
}
