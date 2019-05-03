#check the probability
check_prob = function(prob){
  if(length(prob) > 1){
    stop("invalid prob value")
  }
  if(class(prob) != "numeric"){
    stop("invalid prob value")
  }
  if(prob <= 1 & prob >= 0){
    return(T)
  }
  else{
    stop("invalid prob value")
  }
}

#check the times
check_trials = function(x){
  if(length(x) > 1){
    stop("invalid trial times")
  }
  if(as.integer(x) == x & x >= 0){
    return(T)
  }
  else{
    stop("invalid trial times")
  }
}

#check the success times
check_success = function(suc,tri){
  valid = T
  for(i in 1:length(suc)){
     if(!(as.integer(suc[i]) == suc[i] & suc[i] >= 0 &suc[i] <= tri)){
       valid = FALSE
     }
  }
  if(valid){
    return(T)
  }
  else{
    stop("invalid success times")
  }
}

