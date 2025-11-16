[Blog Link](https://rprogrammingwcody.wordpress.com/2025/11/16/assignment-12-introduction-to-r-markdown/)
---
title: "My R Markdown Primer"
author: "Cody Copenhaver"
date: "2025-11-16"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

R Markdown is a powerful framework that allows you to combine narrative text, code, and visualizations in a single reproducible document. It supports Markdown for writing, LaTeX for mathematical notation, and R code chunks that execute directly within the file. This makes it especially useful for data analysis, reporting, and creating dynamic research documents that automatically update when the underlying code or data changes.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

## Narrative

When working with R Markdown, I appreciate how seamlessly it blends code with explanation. Instead of switching between separate scripts and word-processing documents, I can keep everything in one place. This creates a smoother workflow and ensures that results are always up to date and reproducible. The combination of text, code, and automatically generated plots helps create a more cohesive and transparent analytical report.

## Mathematical Expressions
Here is an inline expression: $\alpha + \beta = \gamma$

And here is a displayed equation:

$$
y = \beta_0 + \beta_1 x + \epsilon
$$


```{r}
library(ggplot2)

# Use the built-in 'mtcars' dataset
data(mtcars)

# Display the first rows
head(mtcars)
```

```{r}
# Summary statistics

summary(mtcars$mpg)

# Plot miles per gallon vs weight

ggplot(mtcars, aes(x = wt, y = mpg)) +
geom_point() +
labs(title = "Fuel Efficiency by Vehicle Weight",
x = "Weight (1000 lbs)",
y = "Miles per Gallon")
```

## Conclusion

Overall, using R Markdown feels much more efficient and organized compared to writing plain reports. I like that I can document my reasoning while embedding live code that automatically updates the outputs. It eliminates the need to copy and paste results or figures manually, which reduces the chance of errors. While regular reports are simpler, R Markdown provides a level of clarity and reproducibility that makes it the better option for analytical work.
