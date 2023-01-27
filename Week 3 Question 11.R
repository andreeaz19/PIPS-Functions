install.packages("gganimate")
library(gganimate)
install.packages("cranlogs")
library(cranlogs)
anim <- cran_downloads(packages = c("caret", "tidymodels"), from = "2014-01-01", to = "2022-12-31")
my_plot <- ggplot(anim, aes(date, count, group = package, color = factor(package))) +
  geom_line() +
  labs(x = "date", y = "Package Downloads", main = "Package popularity over time") +
  theme(legend.position = "right")
my_plot_animate <- my_plot + transition_reveal(date)
my_plot_animate