## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

## function which is really a list containing to
## set the value,get the value, set the inverse and get the inverse.


makeCacheMatrix <- function(x = matrix()) {
    m <-NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function()x
    setInverse <- function (inverse) m <<-inverse
    getInverse <- function () m
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## computes the inverse of the special “matrix” returned by above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data <- x$get
    m <- solve(data, ...)
    x$setInverse(m)
    m
}
