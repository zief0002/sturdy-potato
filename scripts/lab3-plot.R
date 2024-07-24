# Libraries
library(tidyverse)
library(educate)
library(mosaic)

#read in data
sandwiches <- read_csv("https://raw.githubusercontent.com/zief0002/barbieland/main/data/sandwiches.csv")


#simulation to get a plot
set.seed(500)
bootstrap_means <- do(1000) * {mean(sample(sandwiches$sugar, size = 500, replace = TRUE))}

# Histogram
gf_histogram(~bootstrap_means$result, color = "black", fill = "skyblue") + 
  xlab("Bootstrapped Mean Sugar Content (in g)") +
  ylab("Count") +
  theme_bw()

# Numerical summaries
df_stats(~result, data = bootstrap_means)
