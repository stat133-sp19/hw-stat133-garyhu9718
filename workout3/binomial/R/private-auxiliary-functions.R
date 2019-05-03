aux_mean = function(tri, prob){
  return(tri * prob)
}

aux_varriance = function(n, p){
  return(n * p *(1-p))
}

aux_mode = function(tri, prob){
  x = tri * prob
  if(as.integer(x) == x){
    return(c(x, x - 1))
  }
  else{
    return(as.integer(x))
  }
}

aux_skewness = function(n, p){
  return((1 - 2 * p) / (n * p * (1 - p)) ^ 0.5)
}

aux_Kurtosis = function(n, p){
  return((1 - 6 * p * (1-p)) / (n * p * (1-p)))
}

