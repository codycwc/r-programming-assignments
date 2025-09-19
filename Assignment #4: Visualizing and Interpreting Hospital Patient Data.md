[Blog Link](https://rprogrammingwcody.wordpress.com/2025/09/19/assignment-4-visualizing-and-interpreting-hospital-patient-data/)

```{r}
library(readxl)
library(tidyverse)

df <- read_excel('/Users/codycopenhaver/Downloads/Module # 4 assessment_data.xlsx')
summary(df)
df <- na.omit(df)

boxplot(BloodPressure ~ FirstAssess,
        data = df,
        names = c("Good","Bad"),
        ylab = "Blood Pressure",
        main = "BP by First MD Assessment")
boxplot(BloodPressure ~ SecondAssess,
        data = df,
        names = c("Low", "High"),
        ylab = "Blood Pressure",
        main = "BP by Second MD Assessment")
boxplot(
  BloodPressure ~ FinalDecision,
  data = df,
  names = c("Low","High"),
  ylab = "Blood Pressure",
  main = "BP by Final Decision"
)

ggplot(df, aes(x=Frequency)) +
  geom_histogram(
  fill = "grey",
  color = "black",
  binwidth = .1
  ) +
  labs(
    x = "Visit Frequency",
    title = "Histogram of Visit Frequency"
  ) +
  xlim(0,1) +
  theme_bw()
ggplot(df, aes(x=BloodPressure)) +
  geom_histogram(
  fill = "grey",
  color = "black",
  bins = 8
  ) +
  labs(
    x = "Blood Pressure",
    title = "Histogram of Blood Pressure"
  ) +
  theme_bw()
```
