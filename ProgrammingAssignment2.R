makeCacheInverse <- function(x = matrix()) {
## Setting the values for the matrix  
  z <- NULL
  set <- function(y) {
    x <<- y
    z <<- NULL
  }
## Getting the values for the matrix
  get <- function()x
## Setting and Getting the values for the inverse
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse, 
       getinverse = getinverse)
}

cacheSolve <- function(x...) {
  z <- x$getinverse()
  if(!is.null(z)) {
    message("Getting Cached Data")
    return(inv)
  }
}