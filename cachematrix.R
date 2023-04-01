## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  invmat <- NULL
  set <- function(y) {
    x <<- y
    invmat <<- NULL }
  get <- function() x
  setinv <- function(Invmatrix) invmat <<- matX
  getinv <- function() invmat
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv) }


## Write a short comment describing this function
# This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
cacheSolve <- function(x, ...) {
  invmat <- x$getinv()
  if(!is.null(invmat)) {
    message("getting cached data")
    return(invmat) }
  dat <- x$get()
  invmat <- solve(dat)
  x$setinv(invmat)
  invmat }
