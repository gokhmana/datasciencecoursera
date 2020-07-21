## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
				inversion <- NULL
                set <- function(y) {
                  x <<- y
                  inversion <<- NULL
                }
                get <- function() x
                setInverse <- function(inverse) inversion <<- inverse
                getInverse <- function() inversion
                list(set = set,
                     get = get,
                     setInverse = setInverse,
                     getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inversion <- x$getInverse()
                if (!is.null(inversion)) {
                  message("getting cached matrix")
                  return(inversion)
                }
                mat <- x$get()
                inv <- solve(mat, ...)
                x$setInverse(inversion)
                inversion
}
