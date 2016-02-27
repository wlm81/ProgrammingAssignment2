cacheSolve <- function(x,...){
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




 
 
 
 
 

