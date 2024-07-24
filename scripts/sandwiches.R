library(tidyverse)
library(ggformula)

# Import full_sandwiches.csv
all_sandwiches = read_csv(file.choose())


# Create sandwich.csv
set.seed(42)

sandwiches = all_sandwiches |>
  sample_n(40)


sandwiches |>
  write.csv("~/Desktop/sandwiches.csv")


sandwiches = read.csv("https://raw.githubusercontent.com/zief0002/barbieland/main/data/sandwiches.csv")


gf_histogram(
  ~sodium, data = sandwiches, 
  color = "black", 
  fill = "pink",
  xlab = "Sodium (g per cup)",
  ylab = "Count"
)


df_stats(~sodium, data = sandwiches)

