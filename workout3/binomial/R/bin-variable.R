#' @title  binomial variables
#' @description form a binomial object
#' @param n the number of total trials
#' @param p the probability of single success
#' @return a list consisting of the number of trials and the probability of single success
#' @export
#' @examples
#' bin_variable(10,0.3)

bin_variable = function(n,p){
  check_trials(n)
  check_prob(p)
  binvariable = list(trials = n, prob = p)
  class(binvariable) = "binvar"
  return(binvariable)
}



#' @title binomial variable printing
#' @description print out a binomial variable
#' @param x a list with the class of binvar
#' @param ... other inputs passed from other functions
#' @export
#' @examples
#' print(bin_variable(10,0.3))

print.binvar = function(x,...){
  cat('"Binomial variable"\n')
  cat("\n")
  cat("Parameters\n")
  cat("- number of trials:", x[[1]], "\n")
  cat("- prob of success:", x[[2]], "\n")
}



#' @title binomial variable summary
#' @description summary a binomial variable
#' @param x a list with the class of binvar
#' @param ... other inputs passed from other functions
#' @return a list consisting of all the basis statistic information about the distribution
#' @export
#' @examples
#' summary(bin_variable(10,0.3))

summary.binvar = function(x,...){
 a = x[[1]]
 b = x[[2]]
 object = list(trials = x[[1]], prob = x[[2]], mean = aux_mean(a,b), variance = aux_varriance(a,b), mode = aux_mode(a,b), skewness = aux_skewness(a,b), kurtosis = aux_Kurtosis(a,b))
 class(object) = "summary.binvar"
 return(object)
}


#' @title printing of binomial distribution's summary
#' @description print out the summary of a summary of binomial distribution
#' @param x a list, summary of the binomial object
#' @param ... inputs passed from ohter functions
#' @export
#' @examples
#' print(summary(bin_variable(10,0.3)))

print.summary.binvar = function(x,...){
  cat('"Binomial variable"\n')
  cat("\n")
  cat("Parameters\n")
  cat("- number of trials:", x[[1]], "\n")
  cat("- prob of success:", x[[2]], "\n")
  cat("\n")
  cat("-mean:", x$mean, "\n")
  cat("-variance:", x$variance, "\n")
  cat("-mode:", x$mode, "\n")
  cat("-skewness:", x$skewness, "\n")
  cat("-kurtosis:", x$kurtosis, "\n")
}


