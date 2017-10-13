#This contains the code for two functions

#This first function calculates the inverse of a Matrix and caches it.
#It requires the matlib library. You can get it by typing:
#
#install.packages("matlib")
#
#Then load the library with:
#
#library(matlib)

makeCacheMatrix <- function(x = numeric()) {
  I <- NULL
  set <- function(y) {
    x <<- y
    I <<- NULL
  }
  get <- function() x
  setInv <- function(Inverse) I <<- Inverse
  getInv <- function() I
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}

#This computes the inverse of the matrix or retrieves it from cache.

cacheSolve <- function(x, ...) {
  I <- x$getInv()
  if(!is.null(I)) {
    message("getting cached data")
    return(I)
  }
  data <- x$get()
  I <- Inverse(data, ...)
  x$setInv(I)
  I
}