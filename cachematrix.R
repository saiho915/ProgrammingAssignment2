## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Person Explanation:
## 1: assign an initial value to i(stands for inverse)
## 2(set): refresh x
## 3(get): return x
## 4(setinverse): assign the inverse to i
## 4(getinverse): return inverse
## 6(list): return a list containing related functions

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

## Person Explanation:
## 1: extract the initial value for testing
## 2: test whether inverse exists or not
## 3: get the value of x
## 4: calculate the inverse of the matrix
## 5: assign the calculated inverse into the variable i
## 6: return the calculated inverse

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
