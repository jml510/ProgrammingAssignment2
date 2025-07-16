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
  setInverse <- function(inverse) z <<- inverse
  getInverse <- function() z
  list(set = set, get = get,
       setinverse = setinverse, 
       getinverse = getinverse)
}

cacheSolve <- function(x...) {
## Checking to see if data is already calculated
  z <- x$getinverse()
  if(!is.null(z)) {
    message("Getting Cached Data")
    return(z)
  }
## If not already calculated, calculates the inverse and saves it as "m"
  data <- x$get()
  z <- solve(data...)
  x$setinverse(z)
  z
}

