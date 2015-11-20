## Functions calculate & cache inverse of matrix

## Takes a matrix 'x' and creates a special matrix object that can set & get matrix as well as set & get the inverse

makeCacheMatrix <- function(x = matrix()) {

        i <- NULL

        get <- function() x

        set <- function(y) {

                x <<- y

                i <<- NULL

        }

        getInverse <- function() i

        setInverse <- function(inverse) i <<- inverse

        list(get = get, set = set, getInverse = getInverse, setInverse = setInverse)

}


## Returns inverse of 'x'. First checks if inverse of 'x' already cached. If not, calculates and caches inverse

cacheSolve <- function(x, ...) {
        
        i <- x$getInverse()

        if(!is.null(i)) {

                return(i)

        }

        data <- x$get()

        i <- solve(data)

        x$setInverse(i)

        i

}
