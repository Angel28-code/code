library(tidyverse)

# Had a decent pork chop at dining hall.

set.seed(123)

diamonds_sample <- diamonds |>
  slice_sample(n = 50000)

hist_p <- ggplot(diamonds_sample, aes(x = carat)) +
  geom_histogram(bins = 30, color = "white") +
  labs(
    title = "Carat (Weight) Among 50,000 Diamonds",
    x = "Carat",
    y = "Number of diamonds"
  )

ggsave(file = "diamonds.png", plot = hist_p, width = 10, height = 7, units = "in", dpi = 150)