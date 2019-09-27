library(ggplot2)
library(dplyr)

data("diamonds")

data <- diamonds

ggplot(data) +
  geom_bar(mapping = aes(data$cut))
