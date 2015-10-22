## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix will have a funtion to 
## 1. Set the value of the Matrix, x
## 2. Get the value of the Matrix, x
## 3. Set the value of the Inverse, i
## 4. Get the value of the Inverse, i

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
                x <<- y
                i <<- NULL
    }
    get <- function()x
    setinverse <- function(solve) i <<- inverse
    getinverse <- function() i
    list(set = set, get = get, 
        setinverse = setinverse,
        getinverse = getinverse)
}


## Write a short comment describing this function
## load any inverse value in cache into i, i.e. x$getinverse()
## Check by IF (is.null), i not equal to Null, return cache value for i, return(i)
## Otherwise, Use solve to calculate i from data (x$get())

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
        if(!is.null(i)){
            message("getting cached data")
            return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}


