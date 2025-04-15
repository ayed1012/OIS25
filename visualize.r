
library(ggplot2)
library(reshape2)


set.seed(123)  
data_matrix <- matrix(rnorm(100), nrow=10)  
data_long <- melt(data_matrix)
colnames(data_long) <- c("X", "Y", "Value")


heatmap_plot <- ggplot(data_long, aes(X, Y, fill = Value)) +
  geom_tile() +
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", midpoint = 0) +
  labs(title = "Heatmap des données simulées",
       x = "Colonne",
       y = "Ligne") +
  theme_minimal()


print(heatmap_plot)
