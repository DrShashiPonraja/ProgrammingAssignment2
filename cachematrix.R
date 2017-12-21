## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(y){
    x<<-y
  }
  
  get <-function(){
    return(x)
  }
  getInverse <- function(){
    return (inverseMatrix)
  }
  setInverse<- function(x){
    inverseMatrix <<- x
  }
  list(set = set, get = get,
       getInverse = getInverse, setInverse = setInverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matrixToSolve<-x$get()
  inverseMatrix<-solve(matrixToSolve)
  x$setInverse(inverseMatrix)
  
}

