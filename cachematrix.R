## Put comments here that give an overall description of what your
## functions do
## These functions make a matrix, inverse it, store it in cache and retrieve it.

## Write a short comment describing this function
## the first function gets and sets the value of the matrix and then
## does the same for the inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) m <<- inverse
    getInverse <- function() m
    list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)
}


## Write a short comment describing this function
## This one returns the inverse of the matrix after checking if it 
## has already been computed.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)){
        message("getting the cached data")
        return(m)
    }
    data <- x$get()
    m <-solve(data)
    x$setInverse(m)
    m
}
