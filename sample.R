
## test samples to run  the casheSolve.R; have three square matrices
sqmat1 = matrix (c(1,2,3,4),2,2)

sqmat2= matrix (c(4,-2,-4,10),2,2)

sqmat3 = matrix (c(1,2,2,2),2,2)


                 
firstmatrix <- makeCacheMatrix (sqmat1)
yy <- cacheSolve (firstmatrix)
yyy <- cacheSolve (firstmatrix)

secondmatrix <-  makeCacheMatrix (sqmat2)
xx <- cacheSolve(secondmatrix)
xxx <- cacheSolve(secondmatrix)
xxx <- cacheSolve(firstmatrix)

thirdmatrix <-  makeCacheMatrix (sqmat3)
zz <- cacheSolve(secondmatrix)
xx <- cacheSolve(firstmatrix)
yy <- cacheSolve(thirdmatrix)
vv <- cacheSolve(thirdmatrix)
tt <- cacheSolve(thirdmatrix)

