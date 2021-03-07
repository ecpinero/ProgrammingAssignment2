# Programming Assignment: Below are two functions that return a matrix that is the inverse of 'x'

# The first function, makeCacheMatrix creates a special "matrix", which is really a 
# list containing a function to:
    # set the value of the matrix
    # get the value of the matrix
    # set the value of the inverse
    # get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


# The second function, cacheSolve calculates the inverse of the special "matrix" created with 
# the above function
cacheSolve <- function(x, ...) {
  # Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
