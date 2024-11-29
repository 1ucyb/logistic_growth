# Exponential growth model (no carrying capacity phase)

exponential_growth = function(t){
  N = N0 * exp(r * t)
  return(N)
}

# Difference between exponential and logistic growth at a given time.

comparison = function(t){
  # Works out population growth at a given time, assuming exponential growth.
  
  exp_pop = exponential_growth(4980)
  exp_pop
  
  log_pop = logistic_fun(4980)
  log_pop
  
  # Returns the difference.
  
  exp_pop-log_pop
}

# Plots exponential growth against logistic growth

exp_plot = function(){
  ggplot() +
    geom_function(aes(colour = "Exponential"), fun = exponential_growth) +
    geom_function(aes(colour = "Logistic"), fun = logistic_fun) +
    coord_cartesian(ylim = c(0, 65000000000)) +
    xlim(0, 5000) +
    scale_colour_manual(values = c("blue", "red")) +
    labs(color = "Model") +
    xlab("t") +
    ylab("N")
}