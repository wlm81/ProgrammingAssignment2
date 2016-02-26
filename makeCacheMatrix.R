makeCacheMatrix <- function(x = numeric()) {
        i <- NULL
		m <- matrix(x,nrow=2,ncol=2,byrow=TRUE)
		print(m)
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
		get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}