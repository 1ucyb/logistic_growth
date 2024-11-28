#Functions to estimate the model parameters using a linear approximation

#Case 1. K >> N0, t is small

linear_fit_log_growth = function(growth_data, t_upper){
  data_subset1 = growth_data |> filter(t < t_upper) |> mutate(N_log = log(N))
  model1 = lm(N_log ~ t, data_subset1)
  summary(model1)
}

#Case 2. N(t) = K

linear_fit_carry_cap = function(growth_data, t_lower){
  data_subset2 = growth_data |> filter(t >= t_lower)
  model2 <- lm(N ~ 1, data_subset2)
  summary(model2)
}