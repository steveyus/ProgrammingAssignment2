## Put comments here that give an overall description of what your
## functions do

## 
## set the value of the matrix
## get the value of the matrix
## set the inverse of the matrix
## get the inverse of the matrix
##
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inversion <<- NULL
    }
    get <- function() x
    setinversion <- function(inversion) inv <<- inversion
    getinversion <- function() inv
    list(set = set, get = get,
            setinversion = setinversion,
            getinversion = getinversion)
    
}


## 
## Compute the inverse of matrix. It checks if the value   
## is cached and if not, calculate the inverse and cache it.
## 
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv<- x$getinversion()
    if(is.null(inv)) {
        data <- x$get()
        inv <- solve(data, ...)
        x$setinversion(inv)
    } else {
        message("Using cached inverse data")
    }
    inv    
}
