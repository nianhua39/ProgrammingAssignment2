## The function is to cache the inverse of a matrix


## This function is to create a matrix able to cache its inverse


  makeCacheMatrix <- function(x = matrix()) {
  
    inv <- NULL
    set <- function(y) {
      x <<- y
 
  }
  get <- function() x
  setInverse = function(solve) inv <<- solve
  getInverse = function() inv 

  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse
       )
  
}



## This function computes the inverse of the matrix returned by the above "makeCacheMatrix" function. 
## If the inverse has already been calculated, then retrieve the inverse from the cache. 

cacheSolve <- function(x, ...) {
  
        ## Return a matrix that is the inverse of 'x'

        y <- x$getInverse()
        if(!is.null(y)) {
         message("getting cached data")
        return(y)
        }
    data <- x$get()
    y <- solve(data, ...)
    x$setInverse(y)
    y
}

