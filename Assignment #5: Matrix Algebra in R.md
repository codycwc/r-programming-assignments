[Blog Link]()

'''{r}
A <- matrix(1:100,  nrow = 10)
B <- matrix(1:1000, nrow = 10)

dim(A)
dim(B)

invA <- solve(A)
detA <- det(A)
detA

invB <- tryCatch(solve(B), error = function(e) e)
invB

detB <- tryCatch(det(B), error = function(e) e)
detB

'''
