## Functions to take a matrix as an argument in makeCachMatrix and  
## Provides the inverse of a 2x2 matrix but solving the matrix or pulling 
## the results from cache if this is available

## Take matrix as an input and set up four functions to get and set
## the matrix and the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(){ i <<- solve(m)}
    getinverse <- function() i
    list(set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}


## Check for the inverse matrix in cache if it is there retun the inverse matrix
## If not in cache calculate the inverse and save to cache

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- matrix(x$get(),nrow=2,ncol=2,byrow=TRUE)
    i <- solve(data, ...)
    x$setinverse()
    i
}