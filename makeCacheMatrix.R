makeCacheMatrix <- function(x = numeric()) {
        i <- NULL
        m <<- matrix(x,nrow=2,ncol=2,byrow=TRUE)
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