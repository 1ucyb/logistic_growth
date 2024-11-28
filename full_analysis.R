# Run this file for the full analysis.

# Reads in data in .csv format
growth_data = read.csv("experiment.csv")

# Plots raw data, then the same with log(y)
plot_raw_data(growth_data)
plot_log_data(growth_data)

# Fits the exponential growth phase to a linear model. Takes the upper time
# limit of the exponential growth phase as an input.

linear_fit_log_growth(growth_data, 1750)

# Does the same for the carrying capacity phase, taking the lower time bound of
# the carrying capacity as an input.

linear_fit_carry_cap(growth_data, 2500)

# Uses these models to estimate the parameters for the logistic growth model
# and plots the results

log_growth_model(growth_data)