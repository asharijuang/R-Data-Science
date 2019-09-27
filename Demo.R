# variable dan operator
var_a = 1
var_b = 2
var_c = var_a + var_b
# sama dengan
var_c <- var_a + var_b

# jenis data
## vektor

vektor <- c("a","b", 1)
vektor
class(vektor) # character

## data frame
kota <- c("bandung", "semarang", "surabaya")
provinsi <- c("jawa barat", "jawa tengah", "jawa timur")

df <- data.frame(kota, provinsi)

## list
## menggunakan list bisa berbeda jumlah row

ls <- list(kota, provinsi)
## akses data
jateng <- ls[[2]]


# tidyverse
# rmarkdown

install.packages("tidyverse")
install.packages("devtools")

library(tidyverse)
library(devtools)

mtcars <- mtcars
