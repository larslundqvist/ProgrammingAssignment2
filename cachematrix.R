## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
      x<<-y
      inv <<- NULL
    }
    get <-function() x
    compinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(set = set, get = get,
         compinv = compinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    if (!is.null(inv)){
        message("getting cached matrix")
        return(inv)
    }
    
    mat <- x$get()
    inv <- solve(mat, ...)
    x$compinv(inv)
    inv
}