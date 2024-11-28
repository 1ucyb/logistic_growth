# Functions to plot the logistic growth data

# Visualises growth data as-is
plot_raw_data = function(growth_data){
    ggplot(aes(t,N), data = growth_data) +
      geom_point() +
      xlab("t") +
      ylab("y") +
      theme_bw()
}

# Applies a log scale to the y axis
plot_log_data = function(growth_data){
ggplot(aes(t, N), data = growth_data) +
  geom_point() +
  xlab("t") +
  ylab("y") +
  scale_y_continuous(trans='log10')
}