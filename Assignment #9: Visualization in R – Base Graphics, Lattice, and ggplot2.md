[Blog Link](https://rprogrammingwcody.wordpress.com/2025/10/26/assignment-9-visualization-in-r-base-graphics-lattice-and-ggplot2/)
library(lattice)
df <- penguins

count <- df %>% 
  count(species)


barplot(count$n,
      names.arg = count$species,
     main = "Penguin Species Distribution")
hist(df$bill_len)

barchart(n~species,
         data = count,
         main = "Penguin Species Distribution")
median <- median(count$n)

ggplot(count, aes(x=species, y=n, fill=species)) +
  geom_col() +
  labs(
    title = "Penguin Species Distribution",
    x = "Species",
    y = "Count"
  ) +
  geom_hline(yintercept = median, linetype = "dashed", color = "red", size=1) +
  annotate("text", x=2, y=median + 5, label = paste("Median = ", median)) +
  theme_classic()
