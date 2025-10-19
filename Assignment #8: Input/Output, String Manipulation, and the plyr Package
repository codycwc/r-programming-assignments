[Blog Link](https://rprogrammingwcody.wordpress.com/2025/10/19/assignment-8-input-output-string-manipulation-and-the-plyr-package/)
```{r}
library(tidyverse)

df <- read_csv("C:/Users/cody4/Downloads/Guns.csv")

t <- df %>% 
  group_by(year)  %>% 
  summarise(
    avg_violence = mean(violent,  na.rm=TRUE)
  )
t


write.table(
  t,
  file = "violent_mean.txt",
  sep  = "\t",
  row.names = FALSE
)

# year greater than 1986

r <- df %>% 
  filter(year > 1986)

write.csv(
  r$year,
  file = "greater_than_1986.csv",
  row.names = FALSE,
  quote = FALSE
)

write.csv(
  r,
  file = "full_year.csv",
  row.names = FALSE
)
```
