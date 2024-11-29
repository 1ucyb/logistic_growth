# Function to plot data and model

# Sets parameters for models

set_N0 = function(){
  return(growth_data$N[1]) # From growth_data
}

set_r = function(model1){
  return(model1$coefficients[2]) # Coefficient of t
}

set_k = function(model2){
  return(model2$coefficients[1]) # Model 2 intercept
}

# Logistic growth function

logistic_fun = function(t) {
  N = (N0 * K * exp(r * t))/(K - N0 + N0 * exp(r * t))
  return(N)
}

# Plots logistic growth model against input data.

log_growth_model = function(growth_data){
  ggplot(aes(t, N), data = growth_data) +
    geom_function(fun = logistic_fun, colour = "red") +
    geom_point()
}