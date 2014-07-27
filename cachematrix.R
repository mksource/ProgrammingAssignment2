## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      inverse <- NULL
      
       ##Set the matrix
       set <- function(y){
            x <<- y
            inverse <<- NULL
       }
       
       ##Get the matrix
       get <- function() x
      
       ##Set the inverse of the matrix
       setinverse <- function(inv) inverse <<- inv
      
       ##Get the inverse of the matrix
       getinverse <- function() inverse
  list(set = set,get = get, setinverse = setinverse
       ,getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
        
        ##is the inverse is not null then return cached value
        if(!is.null(inverse)){
             message("getting cached data")
             return(inverse)
        }
        matrix <- x$get()
        inverse <- solve(matrix)
        x$setinverse(inverse)
        inverse
}
