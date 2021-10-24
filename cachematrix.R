## Yves Phred Meraz. Programming Assignment #2 
## These two functions will allow for more efficient computation
## of inverting matrices. For invertible Matrices only!

## The first function will set the value of the Matrix, get the value of the
## Matrix, set the inverse of the Matrix, and get the inverse of the Matrix

makeCacheMatrix <- function(x = matrix()) {
inv=NULL
set <- function(y)
  x <<- -y
  inv <<- NuLL
}
  get <- function(){x}
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() {inv}
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  

## The second function checks if the inverse created by makeCacheMatrix has
## already been calculated, if not it caches the inverse Matrix value

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
  message("getting cached data")
  return(inv)
}
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setinverse(inv)
  inv
}
       

