#' @title binomial cumulative probability
#' @description produce a table of cumulative probability
#' @param n the number of total trials
#' @param p the probability of single success
#' @return a dataframe recording the probability and cumulative probability
#' @export
#' @example
#' bin_cumulative(5,0.5)

bin_cumulative =  function(n,p){
  suc = 0:n
  prob = bin_probability(n,suc,p)
  prob_cu = rep(0,n + 1)
  prob_cu[1] = prob[1]
  for(i in 2:(n+1)){
    prob_cu[i] = prob_cu[i-1] +prob[i]
  }
  dat2 = data.frame(success = suc, probability = prob, cumulative = prob_cu)
  class(dat2) = c("bincum", "data.frame")
  return(dat2)
}


#' @title binomial cumulative distribution plot
#' @description plot the cumulative distribution graph
#' @param x a bincum dataframe recording the cumulative distribution information
#' @para ... arguments from other functions
#' @return the cumulative distribution graph
#' @export
#' @example
#' plot(bin_cumulative(10, 0.2))


plot.bincum = function(y, ...){
  plot(y$success, y$cumulative, type = "b", xlab = "times of success", ylab = "cumulative probability")
}



