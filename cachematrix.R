## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#create a square invertible matrix
makeCacheMatrix <- function(x = matrix()) { 
        m <- NULL 
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
#Compute the inverse of a square matrix 
cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        ## Return a matrix that is the inverse of 'x'
        m
}
