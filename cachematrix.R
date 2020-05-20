## Put comments here that give an overall description of what your
## functions do
## These two functions are in partial fulfillment of data science coursera, R programming 
## Write a short comment describing this function
## 

makeCacheMatrix <- function(x = matrix()) { ## define argument
## This function creates an object that can cache its inverse
  inv <- NULL ## initializing inv as NULL
  set <- function(y) { ## define the set function 
    x <<- y ## value of a matrix using <<- operator
    inv <<- NULL ## reset inv to null
    
  }
  get <- function() x ## define the get function
  setinverse <- function(inverse) inv <<- inverse ## assign value to inv in parent environment
  getinverse <- function() inv  ## 
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv))  {
    message(" get cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
