[Blog Link](https://rprogrammingwcody.wordpress.com/2025/10/05/assignment-6-matrix-operations-and-construction/)

```{r}
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A + B
A - B

D <- diag(c(4, 1, 2, 3))
D

E <- diag(c(3, 3, 3, 3, 3))

M <- cbind(c(3, 2, 2, 2, 2), E[, -1] + rbind(rep(1, 4), matrix(0, 4, 4)))
M

```
