## author: Student of R programming course, Couresera
## date: April 19th. 2014

## The two functions in the current files are  makeCacheMatrix and cacheSolve
## They are used to create a special object that stores a (square) matrix 
## and caches its inverse for future use. The matrix is inversed the first time CashceSolve is called
## later on if the same matrix needs inversion it is retrieved from pervious calculations.
## this happens once per same matrix. New matrices are calculated on first run
## sample.R and outputfromInverseMatrix.txt gives the text code and the output for several runs.

 
##This function creates a special "matrix" object that can cache its inverse.
## makeCacheMatrix   function creates a special 'matrix'  which is really a
## list containg a funciton  to 

## set the value for the   matrix
## get the value for the   matrix
## set the value for the inverse
## get teh value for the inverse
 
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL  ## initialize to null
        set <- function (y) {  ## sets the initial value of input
                x <<- y        ## x is stored as a special value to be retrieved late
                m <<- NULL     ## initialze m to null until first matrix comes in.
        }
        
        get <- function() x    ## this will return stored value when called
        
        ## m is set to the inverse value the first time.
        setinverse <- function(inverse) m <<- inverse  
        
        ##  retrieve the   value of m 
        getinverse <-  function () m
        
        ## a list of four functions to set  initial value and stored value
        ## and , a funciton to get the stored  inverse value
        list (set = set, get  = get,
              setinverse = setinverse,
              getinverse = getinverse )
}

## cacheSolve function  calculates the inverse of the special matrix 
## returned by the makeCacheMatrix  function above. BUt, it will first check to see if the 
## inverse has already been calculated. 
## If found the inverse is retrieved from Cache  
## If not, it will calculate the inverse and store it in the cache  via 
## the setinverse function
 
cacheSolve<- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'     
        m <- x$getinverse()
        if (!is.null(m)) {
                message("getting cached data")
                return  (m)
        }
        data <- x$get()         ##  the get function is invoked for the firt time
        m <- solve(data, ...)   ## solve funciton calculates the inverse of the matrix
        x$setinverse(m)         ## set the  value of inverse of the matrix for stroage for future use.
        m      ## print the value of the matirx which is returned ( last line output is returned)
}
