# Function to plot data and model

log_growth_model = function(growth_data){
  
  N0 = growth_data$N[1] # From growth_data
  
  r = coef(summary(model1))["t", "Estimate"] # Coefficient of t
  
  K = coef(summary(model2))["(Intercept)", "Estimate"] # From model 2 intercept
  
  logistic_fun = function(t) {
    N = (N0 * K * exp(r * t))/(K - N0 +N0 * exp(r * t))
    return(N)
  }
  
  ggplot(aes(t, N), data = growth_data) +
    geom_function(fun = logistic_fun, colour = "red") +
    geom_point()
}