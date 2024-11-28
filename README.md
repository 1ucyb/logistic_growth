# Logistic Growth

This is an excercise done as part of a university assessment.

## How to use

1.  Use `renv::restore()` to install the correct versions of all packages used.
2.  Run each script in the `functions` folder to load each function into the environment.
3.  These functions can then be run in sequence using `full_analysis.R`. By default this uses data from `experiment.csv` but should work with any data in the same format.

## Analysis

Population growth can be described by the **logistic growth model**:

$$
\frac{dN}{dt}=Nr\left(1-\frac{N}{k}\right)
$$

Where:

- $N$ is population size
- $k$ is carrying capacity
- $r$ is growth rate

This analysis aims to fit a logistic growth curve to a given set of bacterial growth data. The parameters $N_{0}$, $k$ and $r$ are estimated as follows:

- $N_{0}$ is the earliest value of $N$ given in the dataset
- $k$ is the intercept of a linear model fitted to the constant region of the graph. This region is selected by the user with the aid of a visual plot.
- $r$ is the gradient of a linear model fitted to the exponential growth region of the graph. This region is also selected by the user.