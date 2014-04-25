## Assignement: Caching the Inverse of a Matrix
## Functions that cache the inverse of a matrix: makeCacheMatrix and cacheSolve.


## makeCacheMatrix creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
## Test if the input is correct  
  if (!is.matrix(x)){
    message("input is not a matrix")
    
  }
  else{
    cachex <<- x
    cacheInvx <<- solve(x)
    
  }
  
}


## cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),then retrieve 
## the inverse from the cache.

cacheSolve <- function(x, ...) {
## Test if the input is correct 
  if (!is.matrix(x)){
    message("Input is not a matrix")
  }

## If the inverse has already been calculated, retrive the solution from the cache 
  else if (identical(x,cachex)){
    message("From the cache:")
    return(cacheInvx)
  }
## If the inverse has not been calculated,
## calculate and return a matrix that is the inverse of x. 
  else{
    message("Doesn't exists in cache:")
    return(solve(x))
  }
}
