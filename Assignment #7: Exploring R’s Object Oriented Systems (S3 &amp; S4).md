[Blog Link](https://rprogrammingwcody.wordpress.com/2025/10/12/assignment-7-exploring-rs-object-oriented-systems-s3-s4/)
```{r}
data <- mtcars

summary(data)

s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"

print.student_s3 <- function(x) {
  cat("S3 Student Object:\n")
  cat("Name:", x$name, "\n")
  cat("Age:", x$age, "\n")
  cat("GPA:", x$GPA, "\n")
}

print(s3_obj)

setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)

setMethod("show", "student_s4",
          function(object) {
            cat("S4 Student Object:\n")
            cat("Name:", object@name, "\n")
            cat("Age:", object@age, "\n")
            cat("GPA:", object@GPA, "\n")
          })
s4_obj
```
