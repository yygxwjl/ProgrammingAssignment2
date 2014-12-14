## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function return a list, including 4 functions
## which could set matrix, get matrix, set solve, get solve
makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function
## This function return the solve of a cacheMatrix
## if the solve was computed, it will return soon
## otherwise it will compute it, then return
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getsolve()
        if(!is.null(s)) {
               message("getting cached data")
               return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
}
