## a series of functions to make matrix manipulation easier

## Creates a new object which stores a matrix, functions to change or return the matrix, and caches the inverse

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(y){
    x<<-y
    inverseMatrix <- NULL
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


## This function takes a 'makeCacheMatrix' object, gets the matrix it has stored, calculates the inverse of the matrix, and stores it inside the object

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if (is.null(x$getInverse() )){
    matrixToSolve<-x$get()
    inverseMatrix<-solve(matrixToSolve)
    x$setInverse(inverseMatrix)
  }else{
    
  }
  
  
}

