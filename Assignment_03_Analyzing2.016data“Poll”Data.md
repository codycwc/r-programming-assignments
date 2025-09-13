```
library(ggplot2)
library(tidyverse)

Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll <- c(4,62,51,21,2,14,15)
CBS_poll <- c(12,75,43,19,1,21,19)

df_polls <- data.frame(Name, ABC_poll, CBS_poll)

head(df_polls)
str(df_polls)

mean(df_polls$ABC_poll)
median(df_polls$ABC_poll)
range(df_polls$ABC_poll)

mean(df_polls$CBS_poll)
median(df_polls$CBS_poll)
range(df_polls$CBS_poll)

df_polls$DIff <- df_polls$CBS_poll - df_polls$ABC_poll
df_polls

df_longer <- df_polls %>% 
  pivot_longer(cols = 2:3, names_to = "Poll",  values_to = "Value" )
df_longer

ggplot(df_longer, aes(x = Poll, y = Value, fill = Poll)) +
    geom_col() +
    theme_bw() +
    labs(title = "Sum of Polls") +
    scale_fill_brewer(palette = "Set1")
```
