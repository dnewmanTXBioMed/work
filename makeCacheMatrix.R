## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        ##defines 'm' locally
        m <- NULL
        
        ##defines 'x' and 'm' to the parent environment
        set <- function(y) {
                x <<- y
                
                m <<- NULL
                
        }
        
        ## defines a function "get" that prints matrix 'x'
        
        get <- function() x
        
        ## defines setInverse function using another function 'solve' 
        ## and sends the results of the call to 'm' in the parent environment
        
        setInverse <- function(solve) m <<- solve
        
        ## function to print the results of  'm', which is the inverse of 'x'
        
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse, 
             getInverse = getInverse)
}


