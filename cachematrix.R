## makeCacheMatrix: This function creates a special "matrix" object 
## This will cache its inverse

makeCacheMatrix <- function(x = matrix) {
    inverse <- NULL
    set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function(x) 
    setinverse <- function(inverse) inverse <<- inverse
  getinverse <- function(inverse)
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  
}


##The following function retuns a matrix that is inverse of "x"
cacheSolve <- function(x, ...) {
     inverse <- x$getInverse()
if (!is.null(inverse)) {
  return(inverse)
}
mat <- x$get()
inverse <- solve(mat, ...)
x$setInverse(inv)
inverse
}
        
 
    



