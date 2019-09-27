data("airquality")

summary(airquality)
# global environment data, 
# ada istilah obs dan variable. obs = row dan variable = column


library(dplyr)
# subset 
df1 <- dplyr::select(airquality, 1:3) # ambil data colomn 1 sampai 3
df2 <- dplyr::select(airquality, 1,3,4) # ambil data column 1, 3, 4
df3 <- dplyr::select(airquality, Wind, Temp)
df4 <- airquality$Wind

# subset observatory
filter1 <- dplyr::filter(airquality, Temp > 25)
filter2 <- dplyr::filter(airquality, Day == 1 & Month > 5) 

# sampling
set.seed(10) # lock random value, consistent
random <- dplyr::sample_n(airquality, 10) # ambil 10 obs/row secara random
random2 <- dplyr::sample_frac(airquality, 0.4) # ambil random 40% secara random

# Adding data
quality <- dplyr::mutate(airquality, Quality = Wind + Temp) # menambah colomn Quality
category <- dplyr::mutate(quality, Category = dplyr::case_when(Quality > 80 ~ "Good",
                                                               TRUE ~ "Bad"))


# pipeline atau alur
proses <- airquality %>%
  dplyr::slice(1:50) %>% # proses pertama
  dplyr::slice(1:10) %>% # proses kedua
  dplyr::sample_n(5) # proses selanjutnya atau akhir# pipeline atau alur


