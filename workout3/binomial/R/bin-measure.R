#' @title mean of a binomial distribution
#' @description calculate the mean of a random variable following the binomial distribution
#' @param n the number of total trials
#' @param p the probability of single success
#' @return the calculated mean
#' @export
#' @example
#' bin_mean(5,0.5)

bin_mean = function(n,p){
  check_prob(p)
  check_trials(n)
  aux_mean(n,p)
}

#' @title variance of a binomial distribution
#' @description calculate the variance of a random variable following the binomial distribution
#' @param n the number of total trials
#' @param p the probability of single success
#' @return the calculated variance
#' @export
#' @example
#' bin_variance(5,0.5)

bin_variance = function(n,p){
  check_prob(p)
  check_trials(n)
  aux_varriance(n,p)
}


#' @title mode of a binomial distribution
#' @description calculate the mode of a random variable following the binomial distribution
#' @param n the number of total trials
#' @param p the probability of single success
#' @return the calculated mode
#' @export
#' @example
#' bin_mode(5,0.5)

bin_mode = function(n,p){
  check_prob(p)
  check_trials(n)
  aux_mode(n,p)
}

#' @title skewness of a binomial distribution
#' @description calculate the skewness of a random variable following the binomial distribution
#' @param n the number of total trials
#' @param p the probability of single success
#' @return the calculated skewness
#' @export
#' @example
#' bin_skewness(5,0.5)

bin_skewness = function(n,p){
  check_prob(p)
  check_trials(n)
  aux_skewness(n,p)
}


#' @title kurtosis of a binomial distribution
#' @description calculate the kurtosis of a random variable following the binomial distribution
#' @param n the number of total trials
#' @param p the probability of single success
#' @return the calculated kurtosis
#' @export
#' @example
#' bin_kurtosis(5,0.5)

bin_kurtosis= function(n,p){
  check_prob(p)
  check_trials(n)
  aux_Kurtosis(n,p)
}

