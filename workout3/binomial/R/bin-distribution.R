#' @title binomial distribution
#' @description form the distribution table
#' @param n the total times of trials
#' @param p the probability of success of single trial
#' @return a data frame recording the times of success and corresponding probabilities
#' @export
#' @examples
#' bin_distribution(10, 0.2)
#'
#' #the distribution table of 10 trials with success probability of 01.

bin_distribution = function(n, p){
  suc = 0:n
  prob = bin_probability(n,suc,p)
  dat1 = data.frame(success = suc, probability = prob)
  class(dat1) = c("bindis", "data.frame")
  return(dat1)
}



#' @title binomial distribution plot
#' @description plot the distribution graph
#' @param x a bindis dataframe recording the distribution information
#' @param ... arguments from other functions
#' @return the distribution graph
#' @export
#' @examples
#' plot(bin_distribution(10, 0.2))

plot.bindis = function(x,...){
 barplot(x$probability, names.arg = x$success,xlab = "times of success", ylab = "probability")
}

