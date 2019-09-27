library(tidyverse)
library(dplyr)
library(ggplot2)

plot(economics)
economics <- economics
ggplot(economics, aes(economics$date, economics$unemploy)) +
  geom_line() +
  geom_smooth()

mpg <- mpg
str(mpg)
ggplot(mpg, aes(x = displ, y = hwy, color = cyl)) +
  geom_point() + theme_bw() +
  theme(legend.position = "left")  

ggplot(mpg, aes(manufacturer)) +
  geom_bar(aes(fill = drv), position = position_stack(reverse = TRUE)) +
  coord_flip()

ggplot(mpg, aes(class)) +
  geom_bar(aes(fill = drv), position = "identity", stat = "count") +
  labs(title = "plot cars", x="Tipe", y="Jumlah") +
  coord_flip()

iris <- iris

plot(iris)

ggplot(iris, aes(iris$Sepal.Width, iris$Petal.Width)) +
  geom_point()
  