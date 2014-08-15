##This function computes the inverse of the special "matrix" returned by makeCacheMatrix.
##If the inverse has already been calculated (and the matrix has not changed), 
##then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        
        ## gets the value of x$getInverse() as set in makeCacheMatrix 
        ## and puts it into local variabe 'm'
        ## if 'm' isn't NULL, then return 'm' with the message
        m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        ## if 'm' is NULL, then the original matrix as saved in makeCacheMatrix
        ## is stored in 'data' and used in the solve() function and set in 
        ## setInverse
        
        data <- x$get()
        m <- solve(data, ...)
        x$setInverse(m)
        
        m
}