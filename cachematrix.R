## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        i <- x$getInverse()

if(!is.null(i)) {

return(i)

}

data <- x$get()

i <- solve(data)

x$setInverse(i)

i

}
