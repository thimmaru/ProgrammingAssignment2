## makeCacheMatrix: This function creates a special "matrix" object 
## This will cache its inverse

makeCacheMatrix <- function(x = matrix) {
    inv <- NULL
    set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function(x) 
    setinv <- function(inverse) inv <<- inverse
  getinv <- function(inv)
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  
}


##The following function retuns a matrix that is inverse of "x"
cacheSolve <- function(x, ...) {
     inv <- x$getInverse()
if (!is.null(inv)) {
  return(inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv
}
        
 
    



