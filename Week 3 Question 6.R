#I created a vector for each chicken in the sample in order to be able to 
#calculate a maximum weight for each. I then used a data frame combining the 
#number of each chick with the maximum weight to use in a ggplot bar plot.
chicken_weight <- ChickWeight
weight1 <- max(chicken_weight$weight[1:12])
weight20 <- max(chicken_weight$weight[209:220])
weight3 <- max(chicken_weight$weight[25:36])
weight40 <- max(chicken_weight$weight[449:460])
weight5 <- max(chicken_weight$weight[49:60])
max_weight <- c(weight1, weight20, weight3, weight40, weight5)
chick <- c("1", "20", "3", "40", "5")
df_chic <- data.frame(max_weight, chick)

library(ggplot2)
max_weight_plot <- ggplot(data = df_chic, aes(x = chick, y = max_weight)) +
  geom_col()
max_weight_plot